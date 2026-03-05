SELECT*FROM products;

-- CASE function
SELECT product_name, price, 
	CASE
		WHEN price>=50000.00 THEN 'Expensive'
		WHEN price>=10000.00 AND price<= 49000.00 THEN 'Moderate'
		ELSE 'Affordable'
	END AS price_category
FROM products;

