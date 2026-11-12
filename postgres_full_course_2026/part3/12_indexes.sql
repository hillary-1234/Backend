

--- index --> helps postgres find rows faster 



SELECT
    id,
    tittle,
    status,
    views,
    user_id,
FROM posts;


SELECT 
    id,
    tittle,
    status,
FROM posts
WHERE status = 'published'
ORDER BY views DESC;



CREATE INDEX IF NOT EXISTS idx_posts_status
ON posts(status, views DESC);


















































































