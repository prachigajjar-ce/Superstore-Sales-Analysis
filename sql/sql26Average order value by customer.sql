USE sales_project;
SELECT
    customer_name,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_order_value,
    ROUND(SUM(profit) / COUNT(DISTINCT order_id), 2) AS avg_profit_per_order
FROM sales
GROUP BY customer_name
HAVING COUNT(DISTINCT order_id) >= 3
ORDER BY avg_order_value DESC
LIMIT 10;