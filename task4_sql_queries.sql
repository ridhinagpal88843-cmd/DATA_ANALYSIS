SELECT
    state_province,
    SUM(sales) AS total_sales
FROM sales
GROUP BY state_province
ORDER BY total_sales DESC
LIMIT 5;

