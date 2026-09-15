SELECT metric,value,unit,period FROM analysis_ready ORDER BY metric;
SELECT unit,COUNT(*) metric_count,MIN(value) min_value,MAX(value) max_value FROM analysis_ready GROUP BY unit;
