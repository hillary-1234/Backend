

CREATE SCHEMA IF NOT EXISTS basics;




CREATE EXTENSION IF NOT EXISTS pgcrypto;




-- queries


SELECT schema_name
FROM information_schema.schemata
ORDER BY schema_name;


-- psql -U postgres -d postgres -f part1/01_first_database.sql


























