-- views are virtual table derived from parent table for privacy and security
-- creating a view
create view google_info as
select * from company where name='google';

select * from google_info;
-- google_info table has name,branch,employees columns
select employees from google_info;
select * from company;
select avg(employees) from company;-- avg:168.
select name,employees from company group by name;
select name,employees from company group by name having employees>(select avg(employees) from company);

create view avg_company as
select name,employees from company group by name having employees>(select avg(employees) from company);
-- creating virtual table named avg_company have info companys whose employees>avg of all companys employees
select * from avg_company;
