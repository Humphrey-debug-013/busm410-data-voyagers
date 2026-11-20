-- Builds the hospital-level analysis table: one row per DRG 470 hospital in HI and its 7-13-hospital peer states.
CREATE OR REPLACE TABLE `bigquery-509700.SQL` AS
WITH drg470 AS (
  SELECT provider_id, ANY_VALUE(provider_name) AS provider_name,
         ANY_VALUE(provider_state) AS provider_state,
         SUM(total_discharges) AS discharges_470,
         AVG(average_covered_charges) AS avg_covered_charges_470,
         AVG(average_medicare_payments) AS avg_medicare_payment_470
  FROM `bigquery-public-data.cms_medicare.inpatient_charges_2015`
  WHERE drg_definition LIKE '470%' AND provider_id IS NOT NULL AND total_discharges > 0
  GROUP BY provider_id
),
state_counts AS (
  SELECT provider_state, COUNT(*) AS state_hospital_count
  FROM drg470 GROUP BY provider_state
),
other_drgs AS (
  SELECT provider_id,
         SUM(total_discharges) AS other_drg_discharges,
         COUNT(DISTINCT drg_definition) AS drg_breadth
  FROM `bigquery-public-data.cms_medicare.inpatient_charges_2015`
  WHERE drg_definition NOT LIKE '470%'
  GROUP BY provider_id
),
ranked AS (
  SELECT d.*, s.state_hospital_count,
         ROW_NUMBER() OVER (PARTITION BY d.provider_state
                            ORDER BY d.discharges_470 DESC, d.provider_id) AS state_rank
  FROM drg470 d JOIN state_counts s USING (provider_state)
  WHERE s.state_hospital_count BETWEEN 7 AND 13 OR d.provider_state = 'HI'
)
SELECT
  r.provider_id, r.provider_name, r.provider_state,
  CASE WHEN r.state_rank <= 3 THEN 1 ELSE 0 END AS is_top3,          -- Y
  IFNULL(o.other_drg_discharges, 0) AS other_drg_discharges,
  IFNULL(o.drg_breadth, 0) AS drg_breadth,
  IFNULL(r.avg_covered_charges_470, 0) AS avg_covered_charges_470,
  IFNULL(r.avg_medicare_payment_470, 0) AS avg_medicare_payment_470,
  r.state_hospital_count,
  CASE WHEN r.provider_state = 'HI' THEN 1 ELSE 0 END AS is_hawaii
FROM ranked r LEFT JOIN other_drgs o USING (provider_id);
