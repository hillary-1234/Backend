

-- null --> unknown/,issing val
-- empty string --> known val but contains no characters
-- zero --> actual number value of 0

DROP TABLE IF EXISTS basics.value_examples;

CREATE TABLE basics.value_examples (
    id SERIAL PRIMARY KEY,

    nickname TEXT,

    bio text, 

    score INTEGER

);

INSERT INTO basics.value_examples (nickname, bio, score )
VALUES
    -- nickname is null
    ('','empty nick name', 20),
    (null, 'learning postgreSQL', 10),
    ('Harry', '', 0),
    ('john', null, null);



-- SELECT * FROM basics.value_examples;

-- SELECT * FROM basics.value_examples WHERE nickname IS NULL;

SELECT * FROM basics.value_examples WHERE nickname = '' ;

SELECT * FROM basics.value_examples WHERE score =  0;

SELECT * FROM basics.value_examples WHERE nickname IS NOT NULL;



































































