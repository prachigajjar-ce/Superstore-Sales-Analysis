USE sales_project;

SELECT
    city,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY city
HAVING SUM(profit) < 0
ORDER BY total_profit ASC
LIMIT 10;