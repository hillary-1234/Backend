

--- inner joins returns rows of the same table or are related 

SELECT 
    users.name AS author_name,
    posts. tittle AS post_tittle,
    posts.status,
    posts.views
FROM posts
INNER JOIN users
    ON posts.user_id = users.id
WHERE posts.status = 'published'
ORDER BY posts.views DESC;




SELECT 
    users.name AS author_name,
    posts. tittle AS post_tittle,
    posts.status,
    posts.views
FROM posts
INNER JOIN users
    ON posts.user_id = users.id
WHERE users.name = 'Henry'
ORDER BY posts.views DESC;





































































