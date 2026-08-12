USE sales_project;
SELECT
    segment,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY segment
ORDER BY total_sales DESC;