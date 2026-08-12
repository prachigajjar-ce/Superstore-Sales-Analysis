USE sales_project ;
SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    (SUM(profit) / SUM(sales)) * 100 AS profit_margin
FROM sales
GROUP BY region
ORDER BY profit_margin DESC;