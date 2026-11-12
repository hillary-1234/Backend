

-- left joins keeps all rows from the left table
-- if the right table has matching data, postgreSQL, includes that 
-- if its don't have any matching data it returns null 




-- post  -> left table
-- comments -> right table 


-- because not everypost is going to have comments 
-- some post will have 100 comments and some will have 0 


--- LEFT JOIN --> shows all but if any is missing its says NULL 
--- INNER JOIN --> doesnt show all the data, cause some tables might not have any data in the table




SELECT 
    posts.tittle AS post_tittle,
    comments.body AS comments_body
From posts
LEFT JOIN comments
    ON posts.id = comments.post_id 
    ORDER BY posts.tittle;






























