-- Advanced UK HPI analysis
-- Load the HM Land Registry table as `hpi`.

WITH regional AS (
    SELECT date, region_name, average_price, annual_change,
           RANK() OVER (PARTITION BY date ORDER BY annual_change DESC) AS growth_rank
    FROM hpi
    WHERE annual_change IS NOT NULL
)
SELECT *
FROM regional
WHERE growth_rank <= 5
ORDER BY date DESC, growth_rank;

WITH ordered AS (
    SELECT region_name, date, average_price,
           LAG(average_price) OVER (PARTITION BY region_name ORDER BY date) AS prior_price
    FROM hpi
)
SELECT region_name, date, average_price, prior_price,
       ROUND(100.0 * (average_price - prior_price) / NULLIF(prior_price, 0), 2) AS calculated_mom_pct
FROM ordered
WHERE prior_price IS NOT NULL
ORDER BY date DESC, region_name;
