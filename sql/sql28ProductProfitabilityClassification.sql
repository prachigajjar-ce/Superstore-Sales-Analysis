USE sales_project;
WITH product_profit AS (
    SELECT
        product_name,
        SUM(profit) AS total_profit
    FROM sales
    GROUP BY product_name
)
SELECT
    CASE
        WHEN total_profit < 0 THEN 'Loss'
        WHEN total_profit < 1000 THEN 'Low Profit'
        WHEN total_profit < 5000 THEN 'Medium Profit'
        ELSE 'High Profit'
    END AS profit_category,
    COUNT(*) AS product_count
FROM product_profit
GROUP BY
    CASE
        WHEN total_profit < 0 THEN 'Loss'
        WHEN total_profit < 1000 THEN 'Low Profit'
        WHEN total_profit < 5000 THEN 'Medium Profit'
        ELSE 'High Profit'
    END
ORDER BY product_count DESC;