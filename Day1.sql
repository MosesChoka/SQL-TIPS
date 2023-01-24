-- CREATE A DATABASE -- 
SHOW databases;

CREATE database Population;

SHOW databases;

-- DELETE DATABASE --
DROP DATABASE Population;

SHOW DATABASES ;

-- CREATE DATABASE 2 --

CREATE database Datasession_2;

SHOW databases;

USE Datasession_2 ;

SHOW TABLES;

-- CREATE TABLE --
CREATE TABLE Customers(Name VARCHAR(50), ID int, Age int, City VARCHAR(40));

SHOW TABLES ;

-- FIND OUT detailss about customers' tables --

DESCRIBE Customers ;

-- Filling up our table --
INSERT INTO Customers
VALUES ("Evans", 1, 23, 'Nairobi');

SELECT * FROM Customers ;

insert into Customers 
VALUES ("Esther", 2, 23, 'Kisumu');

SELECT * FROM Customers ;


SELECT name, city From Customers;

INSERT INTO Customers VALUES("Evans", 3, 24, 'Mombasa');

SELECT * FROM Customers;

-- selecting distinct entries --

-- USING DISTINCT --

INSERT INTO Customers VALUES("Esther", 5, 23, "Kisumu");

SELECT * FROM Customers ;

select DISTINCT name, id, age, city from Customers;


-- SQL Beginner --


