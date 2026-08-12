USE sales_project;

SELECT
    state,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY state
ORDER BY total_sales DESC
LIMIT 10;