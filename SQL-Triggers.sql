create database triggers;
show databases;

use triggers;

show tables;

--- before insert event trigger ---

create table customers
( cust_id int, age int, name varchar(30));

show tables;

DESCRIBE customers;

delimiter // 
create trigger age_verify
before insert on customers
for each row
if new.age < 0 then set new.age = 0;
end if; //

insert into customers
values(107, 27, "Moses"),
(108, -26, "Mike"),
(109, 32, "James");

select * from customers;

--- after insert event trigger ---

create table customers1 ( 
id int auto_increment primary key,
name varchar(40) not null,
email varchar(30), birthdate date);

create table message (
id int auto_increment,
messageId int,
message varchar(300) not null,
primary key (id, messageId));

delimiter //
create trigger
check_null_dob
after insert
on customers1
for each row
begin
if new.birthdate is null then
insert into message (messageId, message)
values (new.id, concat('Hi ', new.name, ', please update your date of birth'));
end if;
end//
delimiter ;

insert into customers1 (name, email, birthdate)
values ("Nancy", "nancy@abc.com", NULL),
("Jack", "jack@abc.com", '1970-10-02'),
("Kris","kris2@xyz.com",'1997-08-20');

select * from message;

--- before update event trigger ---
create table employees(id int primary key,
emp_name varchar(25),
age int,
salary float) ;

insert into employees values
(105, "Nicko", 37, 20000),
(106, "Jane", 40,  15000),
(107, "Mark", 22, 25000),
(108, "Angela", 33,16000);

delimiter //
create trigger upd_trigger
before update
on employees
for each row
begin
if new.salary = 1000 then
set new.salary = 85000;
elseif new.salary < 15000 then
set new.salary = 28000;
end if;
end //
delimiter ;


update employees
set salary = 8000;

select * from employees;

--- before delete event trigger ---

create table salary (
eid int primary key,
validfrom date not null,
amount float not null) ;

insert into salary (eid, validfrom, amount)
values (101, '2020-05-01', 55000),
(102, '2020-04-01', 60000),
(103, '2020-03-01', 65000),
(104, '2020-02-01', 40000),
(105, '2020-01-01', 70000);

select * from salary;

create table salary_del(
id int auto_increment primary key,
eid int,
validfrom date not null,
amount float not null,
deletedat timestamp default now());

delimiter //
create trigger salary_del
before delete
on salary
for each row
begin
insert into salary_del(eid, validfrom, amount)
value(old.eid, old.validfrom, old.amount);
end //
delimiter ; 

delete from salary where eid = 104;

select * from salary_del;

show triggers;
