USE sales_project ;
SELECT
    SUM(sales) / COUNT(DISTINCT order_id) AS average_order_value
FROM sales;