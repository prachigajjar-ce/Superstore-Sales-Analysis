USE sales_project ;
SELECT 
    COUNT(DISTINCT order_id) AS total_orders
FROM sales;
