-- Load cleaned electricity table into SQLite as electricity.
SELECT period, fuel, SUM(generation_twh) AS generation_twh
FROM electricity
GROUP BY period, fuel
ORDER BY period DESC, generation_twh DESC;

SELECT period,
       SUM(CASE WHEN fuel IN ('Wind','Solar','Hydro','Bioenergy') THEN generation_twh ELSE 0 END)
       / SUM(generation_twh) * 100 AS renewable_share_pct
FROM electricity
GROUP BY period
ORDER BY period;
