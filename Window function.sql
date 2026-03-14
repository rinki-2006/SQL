SELECT*FROM products;

--assign unique row number to each product within the same category
SELECT product_name, category, price,
	ROW_NUMBER() OVER(PARTITION BY category ORDER BY price ASC) AS row_number
FROM products;
--same as row number
SELECT product_name, category, price,
	DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC) AS rank_number
FROM products;

--running total(toatl on the base of category)
SELECT product_name, category, price,
	SUM(price) OVER(PARTITION BY category ORDER BY price ASC) AS sum
FROM products;

--toatl of all
SELECT product_name, category, price,
	SUM(price) OVER(ORDER BY price ASC) AS sum
FROM products;

--average
SELECT product_name, category, price,
	Avg(price) OVER(ORDER BY price ASC) AS average
FROM products;

SELECT product_name, category, price,
	Avg(price) OVER(PARTITION BY category ORDER BY price ASC) AS average
FROM products;