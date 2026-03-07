SELECT*FROM products;

-- find stock status
SELECT product_name, quantity,
	CASE 
		WHEN quantity>=15 THEN 'IN stock'
		WHEN quantity>=13 AND quantity<15 THEN 'Limited Stock'
		ELSE 'Out of stock'
		END AS stock_status
FROM products;

--seconnd
SELECT product_name, category,
	CASE
		WHEN category LIKE 'Electronics%' THEN 'Electronics Item'
		WHEN category LIKE 'Accessories%' THEN 'Accessories item'
		Else 'Furniture item'
		END AS category_classification
FROM products;
