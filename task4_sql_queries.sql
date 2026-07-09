--Retail Sales Analytics Project

--Author: Ridhi Nagpal

SELECT SUM(sales) AS total_sales
FROM sales;

SELECT SUM(profit) AS total_profit
FROM sales;


SELECT
    region,
    SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;


SELECT
    category,
    SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC;

SELECT
    customer_name,
    SUM(sales) AS total_sales
FROM sales
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;


SELECT
    product_name,
    SUM(profit) AS total_profit
FROM sales
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;


SELECT
    DATE_TRUNC('month', order_date) AS month,
    SUM(sales) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;


SELECT
    category,
    AVG(discount) AS average_discount
FROM sales
GROUP BY category
ORDER BY average_discount DESC;


SELECT
    category,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY category
ORDER BY total_quantity DESC;


SELECT
    state_province,
    SUM(sales) AS total_sales
FROM sales
GROUP BY state_province
ORDER BY total_sales DESC
LIMIT 5;
