CREATE TABLE products2(
product_id SERIAL PRIMARY KEY,
product_name VARCHAR(50),
category VARCHAR(50),
price NUMERIC(10,2),
quantity INT,
added_date DATE,
discount_rate NUMERIC(5,2)
);

SELECT*FROM products2;

INSERT INTO products2(product_name, category, price, quantity, added_date, discount_rate)
VALUES('Laptop', 'Electronics', 75000.00, 20, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.00, 13, '2024-02-15', 5.00),
('Headphones', 'Accessories', 15000.00, 23, '2024-03-15', 15.00),
('Officechair', 'Furniture', 5500.00,12, '2024-04-15', 20.00);

--convet all category to uppercase
SELECT UPPER(category) AS upper_cat
FROM products2;

-- convert all category to lowercase
SELECT LOWER(category) as lower_cat
FROM products2;

--join product_name and category text with hyphen
SELECT CONCAT(product_name, '-',category) AS concat
FROM products2;

SELECT CONCAT(product_name,category) AS concat2
FROM products2;

--Extract first five character from product_name
SELECT SUBSTRING(product_name, 2,5) AS short_name
FROM products2;

--count length
SELECT product_name, LENGTH(product_name) AS count
FROM products2;

SELECT product_name, LENGTH(product_name) AS count
FROM products2
WHERE product_name = 'Laptop';

-- remove leading and trailing space from string
SELECT LENGTH(TRIM('  MONITOR  ')) AS trim_text;
SELECT LENGTH('  MONITOR  ') AS trim_text;

-- replace the word 'phone' with 'device'
SELECT product_name ,REPLACE(product_name , 'phone', 'device') AS replace
FROM products2;

--get first 3 character from category
SELECT LEFT(category, 3) AS updated
FROM products2;

SELECT category, RIGHT(category, 3) AS updated
FROM products2;



