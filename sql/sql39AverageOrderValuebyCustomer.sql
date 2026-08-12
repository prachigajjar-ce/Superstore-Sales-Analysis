USE sales_project;
SELECT
    customer_name,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(sales) AS total_sales,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM sales
GROUP BY customer_name
HAVING COUNT(DISTINCT order_id) >= 3
ORDER BY avg_order_value DESC
LIMIT 10;