

-- one post can have multiple tags
-- many tags can be associated with mutliple post


-- posts.id === post_tags.post_id
-- tags.id === post_tags.tags_id



--Eg show me every post with it's tag 


SELECT
    posts.tittle AS post_tittle,
    tags.name AS tags_name
From posts 
    INNER JOIN post_tags
    ON posts.id = post_tags.post_id
INNER JOIN tags
ON post_tags.tag_id = tags.id
    ORDER BY posts.tittle, tags.name;































































































