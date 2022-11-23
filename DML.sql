# INSERT
# UPDATE
# DELETE

show databases;
use ineuron;
show tables;
create table emp_exercise(
emp_name varchar(100),
designition varchar(100),
age int,
salary int
);
select * from emp_exercise;

INSERT into emp_exercise values ('Jonie Weber','Secretary',28,19500);
INSERT into emp_exercise values('Potsy Weber','Programmer', 32, 45300);
INSERT into emp_exercise values('Dirk Smith', "Programmer II", 45, 75020);


INSERT into emp_exercise values ('Rakesh Pal','Data Scientist',25,200000);
INSERT into emp_exercise values('Aman Singh','Data analyst', 23, 53000);
INSERT into emp_exercise values('Hari Mohan', "SQL Developer", 34, 50200);
INSERT into emp_exercise values('Chuikku PV','Finance', 45, 53000);
INSERT into emp_exercise values('Rani pal', "HR Manager", 24, 50200);

select * from emp_exercise where salary <30000;
select emp_name from emp_exercise where age<=30;
select emp_name ,salary from emp_exercise where designition="Programmer";
select * from emp_exercise where emp_name like "%ebe";
select * from emp_exercise where age>80;
select * from emp_exercise;

SET SQL_SAFE_UPDATES=0;
update emp_exercise set designition='Sr. Programmer' where emp_name='Potsy Weber';

update emp_exercise set emp_name='Kaushal' where designition='Finance';
update emp_exercise set designition='HRM' where emp_name="Rani Pal";
update emp_exercise set designition="Sr. HRM" where designition='HRM';

update emp_exercise set age=age+1 where emp_name='Dirk Smith';
delete from emp_exercise where designition='Finance';
