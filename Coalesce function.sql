SELECT*FROM products;

-- add new column
ALTER TABLE products
ADD COLUMN discount_price NUMERIC(10,2);

--skip this code if want it is not necessary
UPDATE products
SET discount_price = NULL
WHERE product_name IN('Laptop', 'Smartphone');

UPDATE products
SET discount_price = price*0.9  -- 10% discount
WHERE product_name NOT IN('Laptop', 'Smartphone');


SELECT product_name, price, discount_price
FROM products;

--coalesce function
SELECT product_name,
	COALESCE(discount_price, price) AS final_price
FROM products;

--delete column
ALTER TABLE products
DROP COLUMN discount_price;