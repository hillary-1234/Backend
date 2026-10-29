


-- And >> Every condition must be met and true.
-- OR >> Atleast on condition must be met and true.
-- NOT >> Reverse or exclude a condition



-- E.G --->> Product where it is electronics but price is > 1000


-- SELECT name, category, price
-- FROM products
-- WHERE category = 'electronics'
--     AND price > 1000;



-- SELECT name, category, price
-- FROM products
-- WHERE category = 'electronics'
--     OR price > 1000;


-- SELECT name, category, price
-- FROM products
-- WHERE category = 'electronics'
--     OR category = 'furniture'  ;


-- SELECT name, category, price
-- FROM products
-- WHERE NOT category = 'furniture';



SELECT name, category, price, stock
FROM products
WHERE (category = 'electronics', OR category = 'furniture')
    AND stock > 0;


SELECT name, category, price, stock
FROM products
WHERE is_active = true,
    AND (price < 1000 OR stock >= 100);

    








































































