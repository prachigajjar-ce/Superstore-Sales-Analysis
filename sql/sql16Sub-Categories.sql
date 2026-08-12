USE sales_project;
SELECT
    category,
    sub_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY category, sub_category
ORDER BY total_sales DESC;