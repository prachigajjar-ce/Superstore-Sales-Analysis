USE sales_project;
SELECT
    MONTH(order_date) AS month_number,
    MONTHNAME(order_date) AS month_name,
    SUM(sales) AS total_sales
FROM sales
GROUP BY MONTH(order_date), MONTHNAME(order_date)
ORDER BY month_number;