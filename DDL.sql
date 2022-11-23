create database Intro_SQL;

show databases;
use Intro_SQL;
show tables;

create table employees(
emp_name varchar(50),
emp_id int not null,
manager_name varchar(250),
division int,
primary key(emp_id)
);

alter table employees add gender varchar(1);
alter table employees drop column gender;
select * from employees;

show tables;
create table ram(emp_name varchar(50),
emp_id int not null);
create table shyam(emp_name varchar(50),
emp_id int not null);
create table hari(emp_name varchar(50),
emp_id int not null);

drop table shyam;

create database Random;
show databases;
drop database Random;