SELECT 
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_pct
FROM CleanedDataSuperstore
GROUP BY category
ORDER BY total_sales DESC;

SELECT 
    sub_category,
    SUM(quantity) AS total_units_sold,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM CleanedDataSuperstore
GROUP BY sub_category
ORDER BY total_sales DESC
LIMIT 5;

SELECT 
    region,
    segment,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(AVG(discount) * 100, 2) AS avg_discount_pct
FROM CleanedDataSuperstore
GROUP BY region, segment
ORDER BY region ASC, total_sales DESC;