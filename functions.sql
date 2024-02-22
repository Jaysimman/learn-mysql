-- aggregate functions

use learning;
select * from employee;
select count(*) from employee;
select count(*) total from employee;
select count(*) no_of_manager from employee where job_desc = 'MANAGER';
select avg(salary) from employee where job_desc = 'MANAGER';
select sum(salary) from employee where job_desc = 'ANALYST';
select max(salary) from employee;
select min(salary) from employee;

-- string
select emp_name,salary from employee;
select ucase(emp_name)name ,salary from employee; -- alias name
select emp_name,char_length(emp_name) character_count from employee;
select emp_name,concat('₹',format(salary,0)) from employee;
select emp_name,left(job_desc,3) from employee; 

-- date 
alter table employee add column Hire_date date;
update employee set Hire_date = "2014-07-05";
update employee set Hire_date = "2015-08-06" where job_desc = "ANALYST";

select now();
select date(now());
select curdate();
select date_format(curdate(),"%d/%m/%Y");
select date_format(curdate(),"%d/%m/%y");
select date_format(curdate(),"%d/%m/%Y")date;
select datediff(curdate(),"2002/02/10") days;
select date_add(curdate(),interval 1 day) as after_one_day; 
select date_add(curdate(),interval 1 week) as after_one_week; 