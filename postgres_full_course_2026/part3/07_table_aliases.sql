

---- alias means suing another name not the same name as the build
--- for Eg instead of Hillary you say Hillo --> Hillo is the alias


SELECT 
    p.tittle AS post_tittle,
    p.status,
    p.views,
    u.name AS author_name,
    c.body AS comment_body 
FROM posts AS p
INNER JOIN users AS u
    ON p.user_id = u.id
    LEFT JOIN comments AS C 
ON p.id = c.post_id
ORDER BY p.views DESC;



























