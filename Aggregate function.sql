CREATE TABLE products(
product_id SERIAL PRIMARY KEY,
product_name VARCHAR(50),
category VARCHAR(50),
price NUMERIC(10,2),
quantity INT,
added_date DATE,
discount_rate NUMERIC(5,2)
);

SELECT*FROM products;

INSERT INTO products(product_name, category, price, quantity, added_date, discount_rate)
VALUES('Laptop', 'Electronics', 75000.00, 20, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.00, 13, '2024-02-15', 5.00),
('Headphones', 'Accessories', 15000.00, 23, '2024-03-15', 15.00),
('Officechair', 'Furniture', 5500.00,12, '2024-04-15', 20.00);

-- total quantity avalable of all products
SELECT SUM(quantity) AS total_qty 
FROM products;

SELECT SUM(quantity) AS qty_electronics 
FROM products
WHERE category = 'Electronics' AND price>20000.00;

--total number of products
SELECT COUNT(*) AS total_product 
FROM products;

--count with condition
SELECT COUNT(*) AS total_product2 
FROM products
WHERE category = 'Electronics';

SELECT COUNT(*) AS total_product2 
FROM products
WHERE product_name LIKE '%phone';

-- average price of Products
SELECT AVG(price) AS avg_price
FROM products;

--average price of Product with condition
SELECT AVG(price) AS avg_price2
FROM products
WHERE category = 'Electronics';

-- max price and min price
SELECT MAX(price) AS max_price,
	MIN(price) AS min_price
FROM products;
DROP TABLE products;

