-- COUNT, STYLING, FILTERING, AND AGGREGATE FUNCTIONS --

# -> COUNT

SHOW DATABASES;

USE menegarie;

SHOW TABLES ;

SELECT * FROM pet ;

-- counting total number of rows --
SELECT COUNT(*) FROM pet ;

-- counting total number of entries within a column--

SELECT COUNT(owner) FROM pet;

SELECT COUNT(name) AS name_count
FROM pet;

SELECT COUNT(DISTINCT name) AS name_distinct_count 
FROM pet;


-- Understanding query execution and style --
SELECT DISTINCT name, owner
FROM pet 
WHERE name = 'Romina';


-- FILTERING : WHERE, OR, BETWEEN, AND OPERATORS --

# ( < ) - less than
# ( > ) - greater than
# (<= ) - less than or equal to
# ( <> ) - not equal to

SELECT * FROM pet ;

SELECT * FROM pet
WHERE sex = 'm' ;

SELECT name, owner, sex, birth
FROM pet
WHERE birth > '2000-01-01' ;

SELECT * FROM pet
WHERE birth < '2008-01-04' ;

-- WHERE , AND --

SELECT name, owner
FROM pet
WHERE name <> 'Romina'
AND birth > '2010-04-01';

-- WHERE, OR -- 

SELECT name, owner, birth
FROM pet
WHERE owner = 'Fidel' 
OR birth < '2000-01-01' ;

-- WHERE, OR, AND --
SELECT DISTINCT name, owner,birth
FROM pet
WHERE ( owner = 'Odado' OR owner = 'Fidel') AND (birth > '2010-02-01');

-- BETWEEN --
SELECT DISTINCT name, birth, owner
FROM pet
WHERE birth
BETWEEN '2021-05-23' AND '2022-01-24' ;

-- AGGREGATES --
# -> SUM(), AVG(), MAX(), MIN(), COUNT()

SELECT * FROM pet ;


SHOW TABLES ;

SELECT * FROM shop;

 # -> SUM()
 
 SELECT SUM(price) AS total_price
 FROM shop;
 
 # -> AVG()
 
 SELECT AVG(price) AS average_price
 FROM shop;
 
 # -> MAX()
 SELECT MAX(price) AS max_price
 FROM shop ;
 
 # -> MIN()
 SELECT MIN(price) AS min_price
 FROM shop;
 
 -- TO BE CONTINUED ! --
 
 



SELECT * FROM pet;
