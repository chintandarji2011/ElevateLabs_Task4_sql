-- Retrive 'sales'table

SELECT * FROM sales;

-- 1. Total quntity sold by category

SELECT category, SUM(qty_sold) AS total_qty
FROM sales
GROUP BY category;

-- 2. Average price per unit by Category

SELECT category, AVG(qty_sold) AS Avg_price
FROM sales
GROUP BY category;

-- 3. Count of product sold in each category

SELECT category, COUNT(DISTINCT prod_name) AS Product_count
FROM sales
GROUP BY category;

-- 4. Total Sales amount by Category

SELECT category, SUM(qty_sold * price_per_unit) AS total_sale
FROM sales
GROUP BY  category;

-- 5. Filter: show only category with sales > 1,00,000

SELECT category, SUM(qty_sold * price_per_unit) AS total_sale
FROM sales
GROUP BY category
HAVING total_sale > 100000
/*
SELECT category, SUM(qty_sold * price_per_unit) AS total_sale
FROM sales
GROUP BY category
HAVING SUM(qty_sold * price_per_unit) > 100000
*/ -----for pgAdmin4 and SQL server need to use this query becuase HAVING clause run first before SELECT clause
