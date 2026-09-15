-- Load data/uk_hpi.csv into SQLite as hpi.
SELECT region_name, AVG(average_price) AS avg_price
FROM hpi
GROUP BY region_name
ORDER BY avg_price DESC;

SELECT region_name, AVG(annual_change) AS avg_annual_change
FROM hpi
GROUP BY region_name
ORDER BY avg_annual_change DESC;

SELECT date, AVG(average_price) AS uk_average_price
FROM hpi
GROUP BY date
ORDER BY date DESC;
