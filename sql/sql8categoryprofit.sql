USE sales_project ;
SELECT
    category,
    SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC;