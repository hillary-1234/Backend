

--  NOT NULL, UNIQUE, DEFAULT, CHECK


DROP TABLE IF EXISTS basics.accounts;

CREATE TABLE basics.accounts(

    id SERIAL PRIMARY KEY,

    full_name TEXT NOT NULL,

    email TEXT NOT NULL UNIQUE,

    is_active BOOLEAN DEFAULT true,

    age INTEGER CHECK (age >= 18),

    created_at TIMESTAMP DEFAULT NOW()

);

INSERT INTO basics.accounts (full_name, email, age)
VALUES 
(
    'Hillary Nwangene', 'Nwangenehillary@gmail.com', 19
);


-- INSERT INTO basics.accounts (email, age)
-- VALUES 
-- (
--     'Nwanggesdehillary@gmail.com', 19
-- );


INSERT INTO basics.accounts (full_name, email, age)
VALUES 
(
    ' Nwangene Hillary', 'Nwangenehillary@gmail.com', 59
);



-- SELECT * FROM basics.accounts;





