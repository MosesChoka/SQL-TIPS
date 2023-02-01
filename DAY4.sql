
 -- WHERE/AND/OR/IN --
 --- LIKE --
 -- IS/IS NOT ---

SHOW databases ;

USE datasession_2 ;

SHOW TABLES ;

DESCRIBE customers ;

SELECT * FROM customers ;

SELECT * FROM Customers
WHERE age > 28 ;

SELECT * FROM Customers
WHERE age > 20 AND
City = "Kisumu";

USE menegarie ;

SHOW tables ;

USE pet ;

DESCRIBE pet ;

SELECT * FROM pet ;

SELECT * FROM pet
WHERE species = 'dog' OR species = 'cat';


--- WHERE/AND/OR ---
-- birth( > 2020) | (<2023) ---
-- owner ( = Fidel) | (= Martha) ---

SELECT * FROM Pet
WHERE (birth>'2020-01-01' OR birth < '2023-01-01') 
AND (owner = 'Fidel' OR owner = 'Martha') ;

-- Filtering Text using LIKE -- 

-- Wildcards -> (% and _) --

-- % represents, zero, one , or multiple characters --
-- _ represents one or  a single character --

SELECT * FROM pet ;

-- name starts with b --
-- name ends with a
-- species that ir within

SELECT * FROM pet 
WHERE name LIKE 'b%' ;

SELECT * FROM pet
WHERE name LIKE '%na' ;

SELECT * FROM pet ;

-- species have k in the second position ---
-- owner have r in the third position --

SELECT * FROM pet
WHERE species LIKE '_k%';

SELECT * FROM pet
WHERE owner LIKE '__r%';

SELECT * FROM pet
WHERE owner LIKE '___f%' ;

SELECT * FROM pet;

-- TO BE CONTINUED ! --