USE sales_project;
SELECT
    city,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY city
ORDER BY total_sales DESC
LIMIT 10;