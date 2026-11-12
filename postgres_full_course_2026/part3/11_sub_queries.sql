

---- one query insode another query

---- runs the inner query first before the other query 

--- which posts are performing better than average 

SELECT 
    title,
    status,
    views
FROM post table
WHERE views > (
    SELECT AVG(views)
    FROM posts 
)
ORDER BY views DESC;


































































































