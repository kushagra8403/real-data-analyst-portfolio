-- Load cleaned ONS DRSI series into SQLite as retail_sales.
SELECT period, series, value
FROM retail_sales
WHERE period >= '2025'
ORDER BY period DESC;

SELECT period, AVG(value) AS average_index
FROM retail_sales
GROUP BY period
ORDER BY period DESC;
