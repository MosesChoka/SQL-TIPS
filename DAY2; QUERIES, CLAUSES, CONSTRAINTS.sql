-- QUERIES, CONSTRAINTS, CLAUSES --

SHOW DATABASES ;
USE datasession_2 ;
SHOW TABLES;
DESCRIBE customers ;

CREATE TABLE employee (
	ID int  AUTO_INCREMENT ,
    First_Name VARCHAR(30),
    Last_Name VARCHAR(30),
    Age int,
    Salary int,
    primary key (ID)
);

# QUERIES -> Insert
INSERT INTO employee
VALUES (1, "Alice", "Wahome", 35, 25000);

INSERT INTO employee (First_Name, Last_Name, Age, Salary)
VALUES ("Mike", "Oduor", 24, 50000);

INSERT INTO employee (First_Name, Last_Name, Age, Salary)
VALUES ("Anna", "Rehema", 25, 60000);

INSERT INTO employee (First_Name, Last_Name, Age, Salary)
VALUES ("John", "Njoroge", 27, 80000);

INSERT INTO employee (First_Name, Last_Name, Age, Salary)
VALUES ("Stephen", "Ochieng'", 25, 60000);

# -> Select , used to print out table content
SELECT * FROM employee ;

SELECT First_name, Last_name, Salary from employee ;

# -> Update , used to update table content. Must be accompanied with a WHERE Clause to avoid turning the whole column
UPDATE employee
SET First_Name = "Jesica",
Last_Name = "Kemboi",
Age = 27,
Salary = 40000
WHERE ID = 1 ;

SELECT * FROM employee ;

# CLAUSES

# -> WHERE, used to set condition
SELECT * FROM employee
WHERE Age >= 25 ;

# -> AND , used to add aditional conditions
SELECT * FROM employee
WHERE Age < 25 AND Salary >= 20000;

# -> OR, used to give alternative for query
SELECT * FROM employee
WHERE Age > 25 OR Salary <= 30000;

# -> LIKE , used together with wild cards in a WHERE clause to search for a specified pattern in a column
SELECT * FROM employee
WHERE First_Name LIKE '%a' ; -- outputs column with firstname ends with a --

SELECT * FROM employee
WHERE First_Name LIKE 'a%' ; -- outputs column with firstname starts with a --

SELECT * FROM employee
WHERE First_Name LIKE '%ke%' ; -- outputs column with firstname contains ke --

SELECT * FROM employee
WHERE First_Name LIKE '_i%' ; -- outputs column with firstname has i in the 2nd position --

# CONSTRAINTS , are rules enforced on data column of a table, we already used one earlier; AUTO_INCREMENT

# -> NOT NULL
ALTER TABLE  employee 
MODIFY COLUMN Age int NOT NULL ;

# -> PRIMARY KEY, we also have used this before but we can shown this earlier check line 8-15

# -> FOREIGN Key, used prevent actions that would destroy link primary key. Let's create anew table and add the foreign key
CREATE table emp_det (
		P_ID int NOT NULL AUTO_INCREMENT,
		Entry date NOT NULL,
		Performance char(10),
        ID int,
		PRIMARY KEY (P_ID),
		FOREIGN KEY (ID) REFERENCES employee(ID)
    );
    
# -> INDEX , used to retrieve data from the database more quickly

CREATE INDEX idx_lastname ON employee (First_Name);

# -> CHECK, used when you want to allow only certain values in your table

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age>=18)
); 


    

