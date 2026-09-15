-- Load analysis_ready.csv as analysis_ready in SQLite.
SELECT metric,value,unit,period FROM analysis_ready ORDER BY metric;
SELECT unit,COUNT(*) AS metric_count,MIN(value) AS min_value,MAX(value) AS max_value FROM analysis_ready GROUP BY unit;
