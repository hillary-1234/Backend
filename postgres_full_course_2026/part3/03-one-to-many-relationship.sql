


--- one table can have many relationships
--- E.g one user can have many relationships 


---user - parent table
--- post -- child table



SELECT
 users.name AS author_name,
 posts.tittle AS post_title,
 posts.status
FROM users
    INNER JOIN posts
    ON users.id = posts.user_id
    ORDER BY users.name, posts.tittle;


-- CHECK THIS OUT SO YOU CAN LEARN EXTRA 


-- SELECT
--  users.name AS author_name,
--  posts.tittle AS post_title,
--  posts.status
-- FROM users
--     INNER JOIN posts
--     ON users.id = posts.user_id
--     ORDER BY users.name, posts.tittle
-- WHERE name = 'Hillary';























































