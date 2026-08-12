USE sales_project;
SELECT
    ship_mode,
    ROUND(AVG(DATEDIFF(ship_date, order_date)), 2) AS avg_shipping_days
FROM sales
GROUP BY ship_mode
ORDER BY avg_shipping_days;