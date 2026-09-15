-- Advanced STATS19 analysis
-- Load the DfT collision CSV into SQLite as `collisions`.

WITH monthly AS (
    SELECT substr(date, 1, 7) AS month,
           COUNT(*) AS collisions,
           SUM(CASE WHEN accident_severity = 1 THEN 1 ELSE 0 END) AS fatal_collisions
    FROM collisions
    GROUP BY substr(date, 1, 7)
)
SELECT month, collisions, fatal_collisions,
       ROUND(100.0 * fatal_collisions / NULLIF(collisions, 0), 2) AS fatal_collision_pct
FROM monthly
ORDER BY month;

WITH road_summary AS (
    SELECT urban_or_rural_area, road_type, COUNT(*) AS collisions
    FROM collisions
    GROUP BY urban_or_rural_area, road_type
)
SELECT *,
       RANK() OVER (PARTITION BY urban_or_rural_area ORDER BY collisions DESC) AS road_type_rank
FROM road_summary
ORDER BY urban_or_rural_area, road_type_rank;
