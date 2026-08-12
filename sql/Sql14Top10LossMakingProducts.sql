USE sales_project;
SELECT
    product_name,
    SUM(profit) AS total_loss
FROM sales
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY total_loss ASC
LIMIT 10;