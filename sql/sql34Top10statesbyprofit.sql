USE sales_project;
SELECT
    state,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY state
HAVING SUM(profit) < 0
ORDER BY total_profit ASC
LIMIT 10;