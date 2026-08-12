USE sales_project;
SELECT
    discount,
    COUNT(*) AS orders,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(AVG(profit), 2) AS avg_profit
FROM sales
GROUP BY discount
ORDER BY discount;