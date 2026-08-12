USE sales_project ;
SELECT 
    COUNT(DISTINCT customer_id) AS total_customers
FROM sales;