

---- multiple sql statements run as one safe unit 

---  placing an order
---- reduce stock of that product
---- creating payment records
--- transfering money 
-- creating user records with related profile data 


BEGIN; 

UPDATE posts
SET status = 'published'
WHERE tittle = 'Index for Beginners';

UPDATE posts
SET views = views + 50
WHERE tittle = 'Index for Beginners';


SELECT
    tittle,
    status,
    views
FROM posts
WHERE tittle =  'Index for Beginners';


COMMIT;





































































































































