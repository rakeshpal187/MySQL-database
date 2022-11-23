create database key_prim;
use key_prim;

create table ineuron(
course_id int not null,
course_name varchar(30),
course_status varchar(30),
number_of_enrol int,
primary key(course_id));

insert into ineuron values(01,'FSDA','active',100);
insert into ineuron values(02,'FSDS','not_active',200);

select * from ineuron;

create table student_ineuron(
student_id int,
student_name varchar(30),
student_mail varchar(30),
student_status varchar(40),
course_id1 int,
foreign key(course_id1) references ineuron(course_id));

select * from ineuron;
insert into student_ineuron values(101,'FSDA','test@gmail.com','active',02);
select * from student_ineuron;


insert into student_ineuron values(102,'FSDA','test@gmail.com','active',01);

create table payment(
course_name varchar(60),
course_id int,
course_live_status varchar(60),
course_launch_date varchar(60),
foreign key(course_id) references ineuron(course_id));

insert into payment values('fsda',01,'not_active','7th_aug');
insert into payment values('fsda',01,'not_active','7th_aug');
insert into payment values('fsda',01,'not_active','7th_aug');

select * from payment;

create table class(
course_id int,
class_name varchar(40),
class_topic varchar(40),
class_duration int,
primary key(course_id),
foreign key(course_id) references ineuron(course_id));

select * from class;

alter table ineuron add constraint test_prim primary key(course_id,course_name);
##Multiple primary key cannot be created in single table
alter table ineuron drop primary key ;
alter table class drop primary key ;

drop table ineuron;
##Parent table cannot be deleted whenever you have not drop child table

create table test(
id int not null , 
name varchar(60),
email_id varchar(60),
mobile_no varchar(9),
address varchar(50));

select * from test;

alter table test add primary key(id) ;
alter table test drop primary key;

alter table test add constraint test_prim primary key(id, email_id);


create table parent(
id int not null ,
primary key(id));

create table child (
id int ,
parent_id int ,
foreign key (parent_id) references parent(id));

insert into parent values(1)
select * from parent 
insert into child values(1,1)
select * from child
insert into child values(2,2)
delete from parent where id =1
delete from child where id =1

drop table child


create table child (
id int ,
parent_id int ,
foreign key (parent_id) references parent(id) on delete cascade )

insert into child values(1,1),(1,2),(3,2),(2,2)

select * from child

select * from parent

delete from parent where id  = 1

update parent set id = 3 where id = 2

drop table child

create table child (
id int ,
parent_id int ,
foreign key (parent_id) references parent(id) on update cascade )

insert into child values(1,1),(1,2),(3,2),(2,2)

select * from child ; 
select * from parent;

update parent set id = 3 where id = 2

