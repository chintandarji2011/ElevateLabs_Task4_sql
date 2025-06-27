# ElevateLabs_Task4_sql
Author: Darji Chintankumar Dineshchandra
<br>
#  Task 4: Aggregate Functions and Grouping

##  Objective
Use SQL aggregate functions to summarize and analyze tabular data using `SUM`, `COUNT`, `AVG`, `GROUP BY`, and `HAVING`.

---

##  Tools Used
- DB Browser for SQLite  
- MySQL Workbench  

---

## Table Structure

We use a sample `sales` table with the following schema:

```sql
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity_sold INT,
    price_per_unit DECIMAL(10, 2),
    sale_date DATE
);
```
### 1. Total Quantity Sold by Category
> used `SUM` aggregate function with `GROUP BY` clause.
```sql
SELECT category, SUM(qty_sold) AS total_qty
FROM sales
GROUP BY category;
```
### 2.  Average Price Per Unit by Category
> Get result by the help of `AVG` aggregate function by `GROUP BY` clause.
```sql
SELECT category, AVG(qty_sold) AS Avg_price
FROM sales
GROUP BY category;
```
### 3. Count of Products Sold in Each Category
> To find total count of sold product used `COUNT` aggregate funcrion with `GROUP BY` clause.
```sql
SELECT category, COUNT(DISTINCT prod_name) AS Product_count
FROM sales
GROUP BY category;
```
### 4. Total Sales Amount by Category
> Here used `SUM` aggereagte function of product of two columns `qty_sold` and `price_per_unit` with `GROUP BY` clause to get the required result.
```sql
SELECT category, SUM(qty_sold * price_per_unit) AS Total_sale
FROM sales
GROUP BY  category;

```
### 5. Filter: Show Only Categories With Sales > ₹1,00,000
> For filtering the grouped result used `HAVING` clause
```sql
SELECT category, SUM(qty_sold * price_per_unit) AS total_sale
FROM sales
GROUP BY category
HAVING total_sale > 100000
```
#### NOTE: for some RDMS(pgAdmin4, SQL server, etc) we can not use aliase in 'HAVING' clause
> the HAVING clause is evaluated before the SELECT clause, which is where the alias is defined. So at the time HAVING runs, the alias doesn’t exist yet.
```sql
SELECT category, SUM(qty_sold * price_per_unit) AS total_sale
FROM sales
GROUP BY category
HAVING SUM(qty_sold * price_per_unit) > 100000
``` 
