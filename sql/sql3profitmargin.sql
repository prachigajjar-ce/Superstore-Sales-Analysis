USE sales_project ;
SELECT
    (SUM(profit) / SUM(sales)) * 100 AS profit_margin_percentage
FROM sales;