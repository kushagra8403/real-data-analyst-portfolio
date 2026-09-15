-- Load cleaned provider-level A&E data into SQLite as ae.
SELECT provider, SUM(attendances) AS attendances,
       SUM(emergency_admissions) AS emergency_admissions,
       AVG(within_4_hours_pct) AS avg_four_hour_pct
FROM ae
GROUP BY provider
ORDER BY attendances DESC;

SELECT month, SUM(attendances) AS attendances,
       AVG(within_4_hours_pct) AS four_hour_pct
FROM ae
GROUP BY month
ORDER BY month;
