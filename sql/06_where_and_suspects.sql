-- Split 1: top-3 share by state (the CP1 gap)
SELECT provider_state, COUNT(*) AS hospitals, AVG(is_top3) AS share_top3
FROM `your_project.busm410.analysis_table` GROUP BY provider_state ORDER BY provider_state;

-- Split 2: by size quartile
SELECT NTILE(4) OVER (ORDER BY other_drg_discharges) AS size_quartile, is_top3
FROM `your_project.busm410.analysis_table`;
-- (wrap in a subquery and GROUP BY size_quartile, AVG(is_top3))

SELECT 'is_hawaii' AS x, CAST(is_hawaii AS STRING) AS bucket, AVG(is_top3) AS avg_y, COUNT(*) AS n
FROM `your_project.busm410.analysis_table` GROUP BY bucket
UNION ALL
SELECT 'breadth_q', CAST(q AS STRING), AVG(is_top3), COUNT(*) FROM (
  SELECT NTILE(4) OVER (ORDER BY drg_breadth) AS q, is_top3 FROM `your_project.busm410.analysis_table`) GROUP BY q
UNION ALL
SELECT 'payment_q', CAST(q AS STRING), AVG(is_top3), COUNT(*) FROM (
  SELECT NTILE(4) OVER (ORDER BY avg_medicare_payment_470) AS q, is_top3 FROM `your_project.busm410.analysis_table`) GROUP BY q
ORDER BY x, bucket;
