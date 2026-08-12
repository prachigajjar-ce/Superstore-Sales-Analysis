USE sales_project;
SELECT
    customer_name,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin
FROM sales
GROUP BY customer_name
HAVING SUM(sales) > 10000
ORDER BY profit_margin ASC
LIMIT 10;