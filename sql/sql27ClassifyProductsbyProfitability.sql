USE sales_project;
SELECT
    product_name,
    SUM(profit) AS total_profit,
    CASE
        WHEN SUM(profit) < 0 THEN 'Loss'
        WHEN SUM(profit) < 1000 THEN 'Low Profit'
        WHEN SUM(profit) < 5000 THEN 'Medium Profit'
        ELSE 'High Profit'
    END AS profit_category
FROM sales
GROUP BY product_name
ORDER BY total_profit DESC;