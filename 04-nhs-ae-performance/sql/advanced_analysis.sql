-- Advanced NHS A&E analysis
-- Load cleaned provider-level data as `ae`.

WITH provider_month AS (
    SELECT month, provider,
           SUM(attendances) AS attendances,
           AVG(within_4_hours_pct) AS four_hour_pct
    FROM ae
    GROUP BY month, provider
)
SELECT *,
       RANK() OVER (PARTITION BY month ORDER BY attendances DESC) AS attendance_rank
FROM provider_month
ORDER BY month DESC, attendance_rank;

-- Weighted four-hour performance is preferable to a simple provider average
-- when combining providers with very different attendance volumes.
SELECT month,
       SUM(attendances) AS attendances,
       ROUND(100.0 * SUM(attendances * within_4_hours_pct)
             / NULLIF(SUM(attendances), 0), 2) AS weighted_four_hour_pct
FROM ae
GROUP BY month
ORDER BY month;
