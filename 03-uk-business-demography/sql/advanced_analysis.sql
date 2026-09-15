-- Advanced business demography analysis
-- Load a cleaned quarterly table as `business_demography`.

WITH quarterly AS (
    SELECT quarter,
           SUM(creations) AS creations,
           SUM(closures) AS closures,
           SUM(creations) - SUM(closures) AS net_change
    FROM business_demography
    GROUP BY quarter
)
SELECT *,
       SUM(net_change) OVER (ORDER BY quarter ROWS UNBOUNDED PRECEDING) AS cumulative_net_change
FROM quarterly
ORDER BY quarter;

WITH industry_change AS (
    SELECT quarter, industry,
           SUM(creations) - SUM(closures) AS net_change
    FROM business_demography
    GROUP BY quarter, industry
)
SELECT *,
       RANK() OVER (PARTITION BY quarter ORDER BY net_change DESC) AS net_change_rank
FROM industry_change
ORDER BY quarter DESC, net_change_rank;
