-- Step 2: Check source quality and coverage. See sql/README.md.
SELECT COUNT(*) AS source_rows,
       SUM(CASE WHEN provider_id IS NULL OR drg_code IS NULL OR provider_state IS NULL
                     OR discharges IS NULL OR avg_covered_charge IS NULL THEN 1 ELSE 0 END) AS missing_rows,
       SUM(CASE WHEN discharges <= 0 OR avg_covered_charge < 0 THEN 1 ELSE 0 END) AS invalid_rows,
       SUM(CASE WHEN drg_code = '470' THEN 1 ELSE 0 END) AS drg_470_rows,
       (SELECT COUNT(*) FROM (
         SELECT provider_id FROM inpatient_2015 WHERE drg_code = '470'
         GROUP BY provider_id HAVING COUNT(*) > 1
       ) AS duplicates) AS duplicate_470_provider_keys
FROM inpatient_2015;
