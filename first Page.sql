show databases;
create database Ineuron;
use Ineuron;

create table student(
id int,
fname varchar(150) not null,
age int,
gender varchar(1),
location varchar(250)
)

select * from student;
insert into student values (1,"Raka",24,"M","Prayagraj");

insert into student values (2,"",74,"M","Kanpur");

drop table student;

select * from dep;

create table dep(
depid int not null,
depname varchar(50),
depadd varchar(200),
primary key(depid)
);

create table emp(
empid int,
empname varchar(50),
empadd varchar(255),
depid int,
primary key(empid),
foreign key(depid) references dep(depid));

select * from dep;


