

-- like -->> case sensitive pattern match 
-- ilike -->> case insensitive patterns match 
--  % -->> means any no of characters OR if it is after it means anything can be after the word
-- exactly one character



SELECT name, price
FROM products
WHERE name LIKE 'Wireless%';



SELECT name, category, price
FROM products
WHERE name ILIKE 'desk%';


SELECT name, category, description
FROM products
WHERE name ILIKE '%chair%'
    OR description ILIKE '%chair%';




