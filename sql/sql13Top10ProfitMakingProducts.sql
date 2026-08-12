USE sales_project;
SELECT
    product_name,
    SUM(profit) AS total_profit
FROM sales
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;