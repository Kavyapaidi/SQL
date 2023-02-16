-- Joins(get the data from multiple tables with single query) 
use qadbt;
select c.name,c.age,c1.location from citizens as c join citizenloc as c1 where c.name=c1.name;
select c.name,c.age,c1.location from citizens as c join citizenloc as c1 on c.name=c1.name;
select c.name,c.age,c1.location from citizens as c join citizenloc as c1 on c.name=c1.name where c1.location='california';
select c.name,c.age,c1.location from citizens as c join citizenloc as c1 on c.name=c1.name where c.age=34;
create table established(name varchar(20),year int);
insert into established values('qaclickacademy',2010);
insert into established values('google',1990);
insert into established values('yahoo',1992);
insert into established values('facebook',1992);
select * from established;
-- company table have name,branch,employees columns
-- established table have name,year
-- join two tables

set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '');
-- after executing the above query, reconnect to the server then only works
select c.name,c.branch,e.year,c.employees from company as c join established as e on c.name=e.name group by c.name;
select c.name,c.branch,e.year,sum(c.employees) from company as c join established as e on c.name=e.name group by c.name having e.year=1990;
select c.name,c.branch,e.year,min(c.employees) from company as c join established as e on c.name=e.name group by c.name having e.year=1990;
select c.name,c.branch,e.year,max(c.employees) from company as c join established as e on c.name=e.name group by c.name having e.year=1990;
select c.name,c.branch,e.year,sum(c.employees) from company as c join established as e on c.name=e.name group by c.name having e.year>1992;
select c.name,c.branch,e.year,min(c.employees) from company as c join established as e on c.name=e.name group by c.name having e.year>1992;
select c.name,c.branch,e.year,max(c.employees) from company as c join established as e on c.name=e.name group by c.name having e.year>1992;
