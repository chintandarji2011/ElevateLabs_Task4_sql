-- Task: Aggrigation function and grouping practice task
-- Create Sales table
CREATE TABLE sales
(
  sale_id INT PRIMARY KEY,
  prod_name VARCHAR(100),
  category VARCHAR(50),
  qty_sold INT,
  price_per_unit DECIMAL(10,2),
  sale_date DATE
);

-- Insert the sale table data
INSERT INTO sales (sale_id, prod_name, category, qty_sold, price_per_unit, sale_date) VALUES
(1, 'Laptop', 'Electronics', 5, 50000, '2025-06-01'),
(2, 'Headphones', 'Electronics', 15, 1500, '2025-06-02'),
(3, 'Office Chair', 'Furniture', 10, 4000, '2025-06-03'),
(4, 'Desk', 'Furniture', 4, 7000, '2025-06-04'),
(5, 'Smartphone', 'Electronics', 8, 30000, '2025-06-05'),
(6, 'Bookshelf', 'Furniture', 6, 3500, '2025-06-06');



