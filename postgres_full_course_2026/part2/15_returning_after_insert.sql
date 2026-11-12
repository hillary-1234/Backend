

-- returning ususally returns back the runs immediately after inserts 

-- INSERT INTO products (name, category, price, stock, sku, description)
-- VALUES ('webcam camera', 'electronics', 456.67, 56, 'ELEC-WEB-009', 'webcam camera description')

-- RETURNING id, name, category, stock, price, created_at;


UPDATE products 
SET stock = stock - 11
WHERE sku = 'ELEC-WEB-009'

RETURNING id, name, stock, price;



DELETE FROM products
WHERE sku = 'ELEC-WEB-009'

RETURNING id, name, stock, price;


SELECT name, sku 
FROM products
WHERE sku = 'ELEC-WEB-009';





