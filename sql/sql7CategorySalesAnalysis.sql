USE sales_project ;
SELECT
    category,
    SUM(sales) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;