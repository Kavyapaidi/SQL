use qadbt;
create table citizenloc(name varchar(20),location varchar(20));
create table citizens(name varchar(20),age int,exp int);
insert into citizenloc values('rahul','california');
insert into citizenloc values('george','california');
insert into citizenloc values('flex','texas');
insert into citizenloc values('steve','california');
insert into citizenloc values('husain','chicago');
insert into citizens values('rahul',34,6);
insert into citizens values('subash',34,6);
insert into citizens values('george',41,10);
insert into citizens values('flex',23,15);
insert into citizens values('husain',10,0);
insert into citizens values('steve',24,7);
select * from citizenloc;
select * from citizens;
-- main query and subquery
-- common column name for both the tables should be in the middle of query(here it is 'name')
select name,age from citizens where name=(select name from citizenloc where location='texas');
select name,exp from citizens where name=(select name from citizenloc where location='chicago');
select name,exp from citizens where name in(select name from citizenloc where location='california');
select name,location from citizenloc where name =(select name from citizens where age=41);



