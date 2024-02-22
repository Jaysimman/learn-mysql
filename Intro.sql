create database learning;

use learning;

create table student(
	id int primary key,
    name varchar(30),
    gpa decimal(3,2)
);

describe student;

alter table student add column department varchar(10);
alter table student drop column department;

insert into student values(1,"Abraham",8.6);

insert into student values(2,"Ajay",9.6),(3,"Akash",5.6),(4,"Athul",7.6);
insert into student(id,name) values(5,"Akshaya");
select * from student;
select id,name from student;

drop table student;

show tables;