


DROP TABLE IF EXISTS basics.students;


CREATE TABLE basics.students(

        -- create an auto incrementing integer 
        -- 1 -> 2 -> 3 -> 4 and so on 
        -- primary key simply means this col is uniquely identitified 


    id SERIAL PRIMARY KEY,



    name TEXT NOT NULL,

    email TEXT NOT NULL UNIQUE,

    age INTEGER CHECK (age >= 18),

    created_at TIMESTAMP DEFAULT NOW()

);


-- insert data 

INSERT INTO basics.students (name, email, age)
VALUES
        ('Hillary', 'nwangenehillary@gmail.com', 40),
        ('John', 'angenehenry@gmail.com', 38),
        ('Harry', 'hillarynwangene@gmail.com', 22),
        ('Henry', 'henrynwangne@gmail.com', 55);
































