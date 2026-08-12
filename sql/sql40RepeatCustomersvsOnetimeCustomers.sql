USE sales_project;

SELECT
    CASE
        WHEN total_orders = 1 THEN 'One-Time Customer'
        ELSE 'Repeat Customer'
    END AS customer_type,
    COUNT(*) AS customer_count
FROM (
    SELECT
        customer_name,
        COUNT(DISTINCT order_id) AS total_orders
    FROM sales
    GROUP BY customer_name
) AS customer_orders
GROUP BY customer_type
ORDER BY customer_count DESC;