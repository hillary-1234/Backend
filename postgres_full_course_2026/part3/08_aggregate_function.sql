

-- calculate one results from many rows 
-- COUNT() -> number of rows 
-- SUM() -> total value
-- AVG() -> average value 
-- MIN() -> smallest value
-- MAX() -> maximum value


SELECT 
    COUNT(*) AS total_posts,
    COUNT(*) FILTER (WHERE status = 'published') AS published_posts,
    SUM(views) AS total_views,
    AVG(views) AS average_views,
    MIN(views) AS lowest_views,
    MAX(views) AS Highest_views
    FROM posts;






















































































































