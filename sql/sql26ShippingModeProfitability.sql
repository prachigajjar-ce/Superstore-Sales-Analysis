USE sales_project;
SELECT
    ship_mode,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin
FROM sales
GROUP BY ship_mode
ORDER BY profit_margin DESC;