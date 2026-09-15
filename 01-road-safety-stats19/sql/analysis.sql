-- Load data/collisions_2025.csv into SQLite as collisions.
SELECT accident_severity, COUNT(*) AS collisions
FROM collisions
GROUP BY accident_severity
ORDER BY accident_severity;

SELECT speed_limit, COUNT(*) AS collisions
FROM collisions
GROUP BY speed_limit
ORDER BY collisions DESC;

SELECT urban_or_rural_area, COUNT(*) AS collisions
FROM collisions
GROUP BY urban_or_rural_area
ORDER BY collisions DESC;

SELECT road_type, COUNT(*) AS collisions
FROM collisions
GROUP BY road_type
ORDER BY collisions DESC;
