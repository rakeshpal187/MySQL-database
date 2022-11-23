show databases;

create database key_prim;
use key_prim;
create table ineuron(
course_id int NOT NULL,
course_name varchar(40),
course_status varchar(60),
number_of_enrol int,
primary key(course_id));

select * from ineuron;

insert into ineuron values(01,'FSDA','active',100);
insert into ineuron values(02,'FSDA','not active',100);

create table student_ineuron(
student_id int,
student_name varchar(40),
student_email varchar(60),
student_status varchar(40),
course_id1 int,
foreign key(course_id1) references ineuron(course_id));

select * from student_ineuron;
insert into student_ineuron values(102,'fsda','test@gmail.com','active',05);
insert into student_ineuron values(102,'fsda','test@gmail.com','active',01);
insert into student_ineuron values(102,'fsda','test@gmail.com','active',01);

create table payment(
course_name varchar(60),
course_id int,
course_live_status varchar(60),
course_launch_date varchar(60),
foreign key(course_id) references ineuron(course_id));

show tables;

insert into payment values ('fsda',01,'not-active','7th aug')
insert into payment values ('fsda',01,'not-active','7th aug')
insert into payment values ('fsda',01,'not-active','7th aug')

select * from payment;

create table class(
course_id int,
class_name varchar(60),
class_topic varchar(60),
class_duration int,
primary key(course_id),
foreign key(course_id) references ineuron(course_id));

select * from class;

alter table ineuron drop primary key; #can't drop pk because this is parent table

alter table class drop primary key;


drop table ineuron;

alter table ineuron add constraint test_prim primary key(course_id,course_name)

drop table class; # we can drop child tble tjhen after I can drop Parent table

create table test(
id int not null,
name varchar(60),
email_id varchar(60),
mobile_no varchar(60),
address varchar(50));

select * from test;

alter table test add primary key(id);
alter table test drop primary key;

alter table test add constraint test_prim primary key(id,email_id);

create table parent(
id int not null,
primary key(id));

create table child(
id int ,
parent_id int,
foreign key (parent_id) references parent(id));

show tables;
insert into parent values(3);
select * from parent;
insert into child values(1,1);
select * from child;
insert into child values(2,2);
delete from parent where id=1;
delete from child where id=1;
drop table child;

create table child(
id int,
parent_id int,
foreign key (parent_id) references parent(id) on delete cascade);

insert into child values(1,1),(1,2),(3,2),(2,2);

select * from parent;
select * from child;
update parent set id=3 where id=2;