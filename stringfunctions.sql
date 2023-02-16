-- string functions in sql
use qadbt;
-- concat
-- concatinating two columns and also giving name to that column as branches using keyword as
select concat(name,branch) as branches from company;
-- substr
-- In the name column, prints from 4 th character in the name 'qaclickacademy'
select substr(name,4) from company where name='qaclickacademy';
select substr(name,2,4) from company where name='qaclickacademy'; -- **
-- replace
-- with replace function we replaced 'click' with 'b' from name 'qaclickacademy'
select replace(name,'click','b') from company where name='qaclickacademy';

-- length()
-- prints the lenth of every company name 
select length(name) from company;
select length(name) from company where name='google';

-- trim()
select trim(' king ') as trim;

-- limit 
-- prints first 3 companys
select name from company limit 3;
