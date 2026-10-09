

DROP TABLE IF EXISTS basics.products_basic;


CREATE TABLE basics.products_basic (

    id SERIAL PRIMARY KEY,

--  VARCHAR -> for placeholder/string with maximum of 100 characters

    name VARCHAR(100) NOT NULL,

    description TEXT,

    stock INTEGER DEFAULT 0,

    total_view BIGINT DEFAULT 0,

-- exact decimal values e.g 
--  10 means total value/digits
--  2 means numbers after the decimals

    price NUMERIC(10,2),

    is_active BOOLEAN DEFAULT true


);


--  queries

INSERT INTO basics.products_basic
(name, description, stock, total_view, price, is_active)
VALUES 
(

    'product 1',
    'product desc',
    100,
    1200,
    24455.65,
    true
);


SELECT * FROM basics.products_basic;

SELECT id, name, price, is_active
FROM basics.products_basic
WHERE is_active;














































