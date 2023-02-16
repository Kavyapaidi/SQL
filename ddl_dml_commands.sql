create database Qadbt;
use Qadbt;
create table Employeeinfo(name varchar(20),id int,location varchar(20),age int);
describe Employeeinfo;
insert into Employeeinfo values('sam',1,'newjersey',21);
insert into Employeeinfo values('ram',2,'newyork',22);
insert into Employeeinfo values('tam',3,'florida',23);
insert into Employeeinfo values('nam',4,'charlotte',24);
insert into Employeeinfo values('lam',5,'texas',25);
select * from Employeeinfo;
select age from Employeeinfo;
select name,age from Employeeinfo;
#display unique names in Employeeinfo table
select distinct name from Employeeinfo;
insert into Employeeinfo values('lam',6,'Ameerpet',26);
insert into Employeeinfo values('lam',7,'Hitechcity',27);
select name from Employeeinfo where location='newyork';
select name from Employeeinfo where location='newyork' and age>23;
select name from Employeeinfo where (location='Florida' and age<23) or location='charlotte';
select name from Employeeinfo where id=1 or id=2;
select name from Employeeinfo where age in(23,24,25);
select name from Employeeinfo where location in('florida','newyork');
select name from Employeeinfo where age between 21 and 24;
#returns names whose age <22 and >24
select name from Employeeinfo where age not between 22 and 24;
#letter starts with a->a%
#sql is not a case sensitive language
select * from Employeeinfo where name like 'k%';
#second letter as->_b%
select * from Employeeinfo where name like '__m%';
use world;
select * from city;
select countrycode from city where countrycode like 'a%';
select countrycode from city where countrycode like '__a%';


use Qadbt;
#add new column to Employeeinfo table
alter table Employeeinfo add gender varchar(10);
select * from Employeeinfo;
#modify the schema(columns) of column gender in Employeeinfo
#like adding column,deleting column...etc
alter table Employeeinfo modify gender varchar(20);
alter table Employeeinfo drop gender;
describe Employeeinfo;









#updating data
update Employeeinfo set gender='female' where name='kavya';
select * from Employeeinfo;
update Employeeinfo set gender='male' where name like '__m%';
delete from Employeeinfo where name='lam';

create database sample;
use sample;
drop database sample;

use Qadbt;
#order by class is used to sort based on logic
select * from Employeeinfo order by name;
select * from Employeeinfo order by id;
select * from Employeeinfo order by id desc;
select count(location) from Employeeinfo;
select max(age) from Employeeinfo;
select avg(age) from Employeeinfo;






create table company(name varchar(20),branch varchar(20),employees int);
drop table company;
describe company;
insert into company values('qaclickacademy','us',20);
insert into company values('google','us',500);
insert into company values('yahoo','canada',250);
insert into company values('google','india',400);
insert into company values('qaclickacademy','india',75);
insert into company values('qaclickacademy','uk',10);
insert into company values('qaclickacademy','canada',30);
insert into company values('yahoo','us',200);
insert into company values('yahoo','india',150);
insert into company values('facebook','us',50);
select * from company;
select sum(employees) from company;
select branch,sum(employees) from company group by branch;
-- where keyword always comes before group by keyword when we want to use both
select branch,sum(employees) from company where branch='us' group by branch;
select branch,sum(employees) from company where branch='us' or branch='canada' group by branch;
-- having is applied only when you applied group by(substitute of where)
select branch,sum(employees) from company group by branch having branch='us' or branch='canada';









