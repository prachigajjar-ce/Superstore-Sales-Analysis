USE sales_project;
WITH product_profit AS (
    SELECT
        category,
        product_name,
        SUM(profit) AS total_profit
    FROM sales
    GROUP BY category, product_name
)
SELECT
    category,
    product_name,
    total_profit,
    RANK() OVER (
        PARTITION BY category
        ORDER BY total_profit DESC
    ) AS profit_rank
FROM product_profit
ORDER BY category, profit_rank;