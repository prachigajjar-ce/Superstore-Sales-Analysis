USE sales_project;
SELECT
    ship_mode,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_sales_per_order,
    ROUND(SUM(profit) / COUNT(DISTINCT order_id), 2) AS avg_profit_per_order
FROM sales
GROUP BY ship_mode
ORDER BY avg_profit_per_order DESC;