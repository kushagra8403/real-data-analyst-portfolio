-- UK House Prices: repeatable analysis over the committed published evidence table
SELECT metric, value, unit, period
FROM analysis_ready
ORDER BY metric;

-- Numeric KPIs
SELECT unit, COUNT(*) AS metrics, MIN(value) AS min_value, MAX(value) AS max_value
FROM analysis_ready
GROUP BY unit
ORDER BY unit;
