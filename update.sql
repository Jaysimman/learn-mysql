use learning;

create table employee(
	emp_id int primary key,
    emp_name varchar(50),
	job_desc varchar(50),
	salary int
);
show tables;
select * from employee;

INSERT INTO employee VALUES(1,'Ram','ADMIN',1000000);
INSERT INTO employee VALUES(2,'Harini','MANAGER',2500000);
INSERT INTO employee VALUES(3,'George','SALES',2000000);
INSERT INTO employee VALUES(4,'Ramya','SALES',1300000);
INSERT INTO employee VALUES(5,'Meena','HR',2000000);
INSERT INTO employee VALUES(6,'Ashok','MANAGER',3000000);
INSERT INTO employee VALUES(7,'Abdul','HR',2000000);
INSERT INTO employee VALUES(8,'Ramya','ENGINEER',1000000);
INSERT INTO employee VALUES(9,'Raghu','CEO',8000000);
INSERT INTO employee VALUES(10,'Arvind','MANAGER',2800000);
INSERT INTO employee VALUES(11,'Akshay','ENGINEER',1000000);
INSERT INTO employee VALUES(12,'John','ADMIN',2200000);
INSERT INTO employee VALUES(13,'Abinaya','ENGINEER',2100000);

select emp_id,emp_name from employee where emp_name = "Ramya";

select * from employee where salary>250000 and job_desc="MANAGER";
select * from employee where  job_desc="HR" or job_desc="SALES";/*alternatively*/
select * from employee where job_desc in("HR","SALES");

select * from employee where job_desc not in("CEO","MANAGER");

select * from employee where salary between 2000000 and 3000000;

select * from employee limit 5;

select * from employee where salary between 2000000 and 3000000 limit 5;

-- like
-- wildcard %(zero or more characters) _(one character)

select * from employee where emp_name like 'A%';
select * from employee where emp_name not like 'A%';
select * from employee where emp_name like 'A%A';
select * from employee where emp_name like '%i%';
select * from employee where emp_name like '__i%';
select * from employee where emp_name like '__i\%'; -- it checks % symbol is in the name 

update employee set job_desc = "ANALYST" where job_desc = "ENGINEER";
delete from employee where emp_id = 12;