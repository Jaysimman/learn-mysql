use learning;
select * from employee;
select distinct job_desc from employee;

-- orderby
select * from employee order by emp_name;
select * from employee order by salary desc; -- descending order 
select * from employee order by salary,emp_name;
select * from employee where job_desc = "MANAGER" order by salary;
select * from employee order by (case job_desc when 'CEO' then 1 when 'MANAGER' then 2 when 'HR' then 3 when 'ANALYST' then 4 when 'SALES' then 5 else 100 end);
select * from employee order by (case job_desc when 'CEO' then 1 when 'MANAGER' then 2 when 'HR' then 3 when 'ANALYST' then 4 when 'SALES' then 5 else 100 end),emp_name;