
-- 05_where_basic_filter.sql


SELECT name, category, price 
FROM products
WHERE category = 'electronics';

SELECT name, price
FROM products
WHERE price > 1000;

SELECT name, is_active
FROM products
WHERE is_active = false;















