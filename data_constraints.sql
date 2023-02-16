-- data constraints
-- 1. not null constraint
create table flight_details(flightname varchar(20), flightid integer not null);
describe flight_details;
insert into flight_details values('abc',1);
insert into flight_details values('abc',null); -- gets error
insert into flight_details values('abc'); -- gets error
-- 2. default constraint
create table student(name varchar(20),age int default 21);
insert into student values('kavya'); -- error
insert into student (name) values('kavya');
select * from student;
-- 3. unique constraint
create table student1(name varchar(20),id int unique);
insert into student1 (name,id) values ('Kavya',21);
insert into student1 (name,id) values ('Lavanya',21); -- gets error
-- 4. primarykey constraint
-- it cannot be a null, it should be unique, uniquely identified key
create table empdb(empid int,empname varchar(20),branch varchar(20), primary key(empid));
insert into empdb values(001,'naveen','cse');
insert into empdb values(001,'kota','cse'); -- gets error
