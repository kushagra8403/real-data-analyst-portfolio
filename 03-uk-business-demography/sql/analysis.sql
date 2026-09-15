-- Load a cleaned quarterly table into SQLite as business_demography.
SELECT quarter, industry, SUM(creations) AS creations, SUM(closures) AS closures,
       SUM(creations)-SUM(closures) AS net_change
FROM business_demography
GROUP BY quarter, industry
ORDER BY quarter DESC, net_change DESC;

SELECT quarter, SUM(creations) AS creations, SUM(closures) AS closures
FROM business_demography
GROUP BY quarter
ORDER BY quarter DESC;
