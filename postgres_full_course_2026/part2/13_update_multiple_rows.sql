

SELECT name, category, price, is_active
FROM products
WHERE category = 'furniture';




-- SELECT * FROM products
-- WHERE category = 'stationery';






UPDATE products
SET price = Round(price * 1.10, 2)
WHERE category = 'furniture';



SELECT *
FROM products
WHERE category = 'furniture';

SELECT * FROM products WHERE SKU = ' STAT-NOT-001 '


UPDATE products
SET is_active = FALSE
WHERE stock = 0;

SELECT name, stock, is_active
FROM products
WHERE is_active = FALSE






















