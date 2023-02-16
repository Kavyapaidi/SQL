-- ASSIGNMENT-1
CREATE DATABASE assignments;
use assignments;

-- table worker
create table worker(
id int,
first_name varchar(20),
last_name varchar(20),
salary integer,
joining_date date,
department varchar(20),
primary key(id));

describe worker;

alter table worker modify id int auto_increment;

-- as id is not null column,even though we insert null it is taking value because of auto_increment
insert into worker (id,first_name,last_name,salary,joining_date,department) values(null,'kavyasri','paidi',30000,'2023-02-15','account');
-- but if we are not inserting anything (even null) it is giving error
-- we should give something either null or value
insert into worker (id,first_name,last_name,salary,joining_date,department) values('kavyasri','paidi',30000,'2023-02-15','account');
select * from worker;
drop table worker;
-- it is auto incrementing 1 to 2
insert into worker (id,first_name,last_name,salary,joining_date,department)values(null,'lavanya','paidi',10000,'2023-02-14','hr');
insert into worker values(null,'naveen','paidi',15000,'2023-02-13','lnd');
insert into worker values(null,'lakshmi','paidi',55000,'2023-02-12','account');
insert into worker values(null,'kusuma','nagedi',35000,'2023-02-01','admin');
alter table worker modify id int auto_increment not null;
describe worker;
insert into worker values(null,'gops','jhari',35000,'2023-02-01','hr');

-- table bonus
-- ON DELETE CASCADE constraint is used in MySQL to delete the rows from the child table automatically, 
-- when the rows from the parent table are deleted.
create table bonus(worker_ref_id int,bonus_date date,bonus_amount int,foreign key(worker_ref_id) references worker(id) on delete cascade);

-- inserting values into bonus table
insert into bonus values(1,'2022-02-12',2000);
insert into bonus values(2,'2022-03-19',1500);
insert into bonus values(3,'2022-05-11',2000);
insert into bonus values(1,'2022-06-08',4000);
insert into bonus values(4,'2021-09-25',3000);
insert into bonus values(3,'2023-01-01',1000);
select * from bonus;
delete from worker where first_name='kavyasri';
insert into worker (id,first_name,last_name,salary,joining_date,department) values(1,'kavyasri','paidi',30000,'2023-02-15','account');

-- title table
create table title(worker_ref_id int,title varchar(20),foreign key(worker_ref_id) references worker(id) on delete cascade);
describe title;
insert into title values(1,'manager');
insert into title values(3,'prof');
insert into title values(5,'executive');
insert into title values(2,'asst manager');
insert into title values(7,'lead');
insert into title values(4,'intern');
select * from title;


-- eg: table employee
Create table employee(id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, Name Varchar(10));
describe employee;

-- When we insert NULL value to AUTO_INCREMENT column, MySQL will return sequence number.
Insert into employee(id, Name) values(NULL, 'Gaurav');
Insert into employee(id, Name) values(NULL, 'kavya');


Select * from employee;


-- eg: table employee1
Create table employee1(id INT NOT NULL  AUTO_INCREMENT, Name Varchar(10));-- gets error
-- Can we use auto increment as primary key?
-- Auto Increment is a field used to generate a unique number for every new record added into a table. This is generally used 
-- for the primary key column as it becomes easy for
-- the developers to automatically generate a unique number for every new record.
Create table employee1(id INT NOT NULL  primary key AUTO_INCREMENT, Name Varchar(10));
describe employee1;

-- When we insert NULL value to AUTO_INCREMENT column, MySQL will return sequence number.
Insert into employee1(id, Name) values(NULL, 'Gaurav');
Insert into employee1(id, Name) values(NULL, 'kavya');

Select * from employee1;

delete from bonus where worker_ref_id=3 and bonus_amount=2000;



