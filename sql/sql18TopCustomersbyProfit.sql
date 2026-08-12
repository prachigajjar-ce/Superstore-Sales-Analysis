USE sales_project;
SELECT
    customer_name,
    SUM(profit) AS total_profit
FROM sales
GROUP BY customer_name
ORDER BY total_profit DESC
LIMIT 10;