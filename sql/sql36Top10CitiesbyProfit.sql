USE sales_project;

SELECT
    city,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY city
ORDER BY total_profit DESC
LIMIT 10;