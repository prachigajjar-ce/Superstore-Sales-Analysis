USE sales_project;
SELECT
    ship_mode,
    COUNT(*) AS total_orders,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY ship_mode
ORDER BY total_sales DESC;