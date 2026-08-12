USE sales_project;
SELECT
    year,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY year
ORDER BY year;