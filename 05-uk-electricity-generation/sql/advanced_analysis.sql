-- Advanced electricity-mix analysis
-- Load cleaned generation data as `electricity`.

WITH mix AS (
    SELECT period,
           SUM(generation_twh) AS total_generation_twh,
           SUM(CASE WHEN fuel IN ('Wind','Solar','Hydro','Bioenergy')
                    THEN generation_twh ELSE 0 END) AS renewable_generation_twh
    FROM electricity
    GROUP BY period
), shares AS (
    SELECT *,
           100.0 * renewable_generation_twh / NULLIF(total_generation_twh, 0) AS renewable_share_pct
    FROM mix
)
SELECT *,
       ROUND(renewable_share_pct -
             LAG(renewable_share_pct) OVER (ORDER BY period), 2) AS share_change_pp
FROM shares
ORDER BY period;
