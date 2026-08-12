USE sales_project;
SELECT
    state,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin
FROM sales
GROUP BY state
HAVING SUM(sales) > 20000
ORDER BY profit_margin DESC
LIMIT 10;