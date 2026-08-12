USE sales_project;
SELECT
    customer_name,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;