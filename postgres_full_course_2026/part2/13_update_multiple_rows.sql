

SELECT name, category, price, is_active
FROM products
WHERE category = 'stationary';




UPDATE products
SET price = Round(price * 1.10, 2)
WHERE category = 'stationary';


























