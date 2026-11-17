-- Measure the FY2015 DRG 470 volume concentration gap. See sql/README.md.
WITH src AS (
  SELECT provider_id, TRIM(provider_state) AS state,
         SAFE_CAST(total_discharges AS INT64) AS n,
         COUNT(*) OVER (PARTITION BY provider_id) AS copies
  FROM `bigquery-public-data.cms_medicare.inpatient_charges_2015`
  WHERE STARTS_WITH(TRIM(drg_definition), '470 -')
), ranked AS (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY state ORDER BY n DESC, provider_id) AS rk
  FROM src WHERE copies = 1 AND provider_id IS NOT NULL AND LENGTH(state) = 2 AND n > 0
), states AS (
  SELECT state, COUNT(*) AS hospitals, SUM(n) AS total, SUM(IF(rk <= 3, n, 0)) AS top_three
  FROM ranked GROUP BY state
), peers AS (
  SELECT AVG(SAFE_DIVIDE(top_three, total)) AS benchmark
  FROM states WHERE state <> 'HI' AND hospitals BETWEEN 7 AND 13
)
SELECT *, 100 * SAFE_DIVIDE(top_three, total) AS share_pct,
       100 * benchmark AS benchmark_pct,
       (SAFE_DIVIDE(top_three, total) - benchmark) * 100 AS gap_pp,
       top_three - benchmark * total AS gap_discharges,
       (SELECT COUNT(*) FROM src) - (SELECT COUNT(*) FROM ranked) AS excluded
FROM states CROSS JOIN peers
WHERE state = 'HI' OR hospitals BETWEEN 7 AND 13 ORDER BY state;
