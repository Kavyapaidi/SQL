-- techademy assignment-2
use assignments;
select * from worker;
-- 1. 
select * from worker where first_name like 'k%';
-- 2.
select first_name,salary from worker where salary between 30000 and 60000;
-- 3.
select * from worker where last_name like '_a%' and department='account';
select * from worker where first_name like 'l%' and (department='hr' or department='account');
select * from worker where (first_name like 'l%' and  last_name like '_a%') and (department='hr' or department='account');






select * from worker where (first_name like 'l%' and  last_name like '_a%') and department='hr';
-- 4.
select first_name,salary from worker order by salary desc;
-- 5.
create view temp as(
select max(salary) as salar1,department from worker group by department);
select salar1,department from temp where salar1>50000;
-- 6.
select * from title;
select w.id, w.first_name,w.last_name,w.salary,w.joining_date,w.department,t.title from worker as w join title as t on w.id=t.worker_ref_id where t.title='manager';

