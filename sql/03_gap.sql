-- Step 3: Measure the weighted charge gap and its dollar scale. See sql/README.md.
WITH eligible AS (
  SELECT *, COUNT(*) OVER (PARTITION BY provider_id, drg_code) AS key_count
  FROM inpatient_2015 WHERE drg_code = '470'
), totals AS (
  SELECT CASE WHEN provider_state = 'HI' THEN 'HI' ELSE 'Other reporting providers' END AS cohort,
         COUNT(*) AS providers, SUM(discharges) AS discharges,
         SUM(discharges * avg_covered_charge) AS covered_charges
  FROM eligible
  WHERE key_count = 1 AND provider_id IS NOT NULL AND provider_state IS NOT NULL
    AND discharges > 0 AND avg_covered_charge >= 0
  GROUP BY 1
), rates AS (
  SELECT *, covered_charges / (1.0 * discharges) AS charge_per_discharge FROM totals
)
SELECT h.providers AS hi_providers, p.providers AS peer_providers,
       h.discharges AS hi_discharges, p.discharges AS peer_discharges,
       h.charge_per_discharge AS hi_charge, p.charge_per_discharge AS peer_charge,
       p.charge_per_discharge - h.charge_per_discharge AS gap_per_discharge,
       100.0 * (1 - h.charge_per_discharge / p.charge_per_discharge) AS pct_below_peer,
       (p.charge_per_discharge - h.charge_per_discharge) * h.discharges AS billed_charge_difference
FROM rates AS h CROSS JOIN rates AS p
WHERE h.cohort = 'HI' AND p.cohort = 'Other reporting providers';
