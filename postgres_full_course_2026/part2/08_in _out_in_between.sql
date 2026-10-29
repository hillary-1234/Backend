

-- SELECT name, price

-- FROM products

-- WHERE price BETWEEN 100 AND 2000;




SELECT name, price, stock
FROM products
WHERE category IN ('electronic', 'stationary')
    AND price BETWEEN 100 and 2000;




