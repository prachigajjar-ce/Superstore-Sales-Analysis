USE sales_project ;
SELECT
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    (SUM(profit) / SUM(sales)) * 100 AS profit_margin
FROM sales
GROUP BY category
ORDER BY profit_margin DESC;