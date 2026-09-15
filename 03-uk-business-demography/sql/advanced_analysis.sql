WITH ranked AS (SELECT metric,value,unit,period,RANK() OVER(PARTITION BY unit ORDER BY value DESC) metric_rank FROM analysis_ready) SELECT * FROM ranked ORDER BY unit,metric_rank;
