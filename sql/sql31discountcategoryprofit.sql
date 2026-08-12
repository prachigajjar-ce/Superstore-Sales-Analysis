USE sales_project;

SELECT
    category,
    discount,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(AVG(profit), 2) AS avg_profit
FROM sales
GROUP BY category, discount
ORDER BY category, discount;