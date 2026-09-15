-- Advanced ONS retail-sales analysis
-- Load a cleaned ONS series table as `retail_sales`.

WITH monthly AS (
    SELECT series, period, value,
           LAG(value, 12) OVER (PARTITION BY series ORDER BY period) AS value_12m_ago
    FROM retail_sales
)
SELECT series, period, value, value_12m_ago,
       ROUND(100.0 * (value - value_12m_ago)
             / NULLIF(value_12m_ago, 0), 2) AS yoy_pct
FROM monthly
WHERE value_12m_ago IS NOT NULL
ORDER BY period DESC, series;

WITH ranked AS (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY series ORDER BY period DESC) AS rn
    FROM retail_sales
)
SELECT series, period, value
FROM ranked
WHERE rn = 1
ORDER BY series;
