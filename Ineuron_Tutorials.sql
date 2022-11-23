show databases;
create database	if not exists ineuron_fsda;
use ineuron_fsda;
drop database ineuron_fsda;

create table bank_details(
age int,
job varchar(30),
marital varchar(30),
education varchar(30),
`default` varchar(30),
balance int,
housing varchar(30),
loan varchar(30),
contact varchar(30),
`day` int,
`month` varchar(30),
duration varchar(30),
compaign varchar(30),
pdays int,
previous int,
poutcome varchar(30),
y varchar(30));

select * from bank_details;
insert into bank_details values(58,"management","married","tertiary","no",2143,"yes","no","unknown",5,"may",261,1,-1,0,"unknown","no");

insert into bank_details values
(44,"technician","single","secondary","no",29,"yes","no","unknown",5,"may",151,1,-1,0,"unknown","no"),
(33,"entrepreneur","married","secondary","no",2,"yes","yes","unknown",5,"may",76,1,-1,0,"unknown","no"),
(47,"blue-collar","married","unknown","no",1506,"yes","no","unknown",5,"may",92,1,-1,0,"unknown","no"),
(33,"unknown","single","unknown","no",1,"no","no","unknown",5,"may",198,1,-1,0,"unknown","no"),
(35,"management","married","tertiary","no",231,"yes","no","unknown",5,"may",139,1,-1,0,"unknown","no"),
(28,"management","single","tertiary","no",447,"yes","yes","unknown",5,"may",217,1,-1,0,"unknown","no"),
(42,"entrepreneur","divorced","tertiary","yes",2,"yes","no","unknown",5,"may",380,1,-1,0,"unknown","no"),
(58,"retired","married","primary","no",121,"yes","no","unknown",5,"may",50,1,-1,0,"unknown","no"),
(43,"technician","single","secondary","no",593,"yes","no","unknown",5,"may",55,1,-1,0,"unknown","no"),
(41,"admin.","divorced","secondary","no",270,"yes","no","unknown",5,"may",222,1,-1,0,"unknown","no"),
(29,"admin.","single","secondary","no",390,"yes","no","unknown",5,"may",137,1,-1,0,"unknown","no"),
(53,"technician","married","secondary","no",6,"yes","no","unknown",5,"may",517,1,-1,0,"unknown","no"),
(58,"technician","married","unknown","no",71,"yes","no","unknown",5,"may",71,1,-1,0,"unknown","no"),
(57,"services","married","secondary","no",162,"yes","no","unknown",5,"may",174,1,-1,0,"unknown","no"),
(51,"retired","married","primary","no",229,"yes","no","unknown",5,"may",353,1,-1,0,"unknown","no"),
(45,"admin.","single","unknown","no",13,"yes","no","unknown",5,"may",98,1,-1,0,"unknown","no"),
(57,"blue-collar","married","primary","no",52,"yes","no","unknown",5,"may",38,1,-1,0,"unknown","no"),
(60,"retired","married","primary","no",60,"yes","no","unknown",5,"may",219,1,-1,0,"unknown","no"),
(33,"services","married","secondary","no",0,"yes","no","unknown",5,"may",54,1,-1,0,"unknown","no"),
(28,"blue-collar","married","secondary","no",723,"yes","yes","unknown",5,"may",262,1,-1,0,"unknown","no"),
(56,"management","married","tertiary","no",779,"yes","no","unknown",5,"may",164,1,-1,0,"unknown","no"),
(32,"blue-collar","single","primary","no",23,"yes","yes","unknown",5,"may",160,1,-1,0,"unknown","no"),
(25,"services","married","secondary","no",50,"yes","no","unknown",5,"may",342,1,-1,0,"unknown","no"),
(40,"retired","married","primary","no",0,"yes","yes","unknown",5,"may",181,1,-1,0,"unknown","no"),
(44,"admin.","married","secondary","no",-372,"yes","no","unknown",5,"may",172,1,-1,0,"unknown","no"),
(39,"management","single","tertiary","no",255,"yes","no","unknown",5,"may",296,1,-1,0,"unknown","no"),
(52,"entrepreneur","married","secondary","no",113,"yes","yes","unknown",5,"may",127,1,-1,0,"unknown","no"),
(46,"management","single","secondary","no",-246,"yes","no","unknown",5,"may",255,2,-1,0,"unknown","no"),
(36,"technician","single","secondary","no",265,"yes","yes","unknown",5,"may",348,1,-1,0,"unknown","no"),
(57,"technician","married","secondary","no",839,"no","yes","unknown",5,"may",225,1,-1,0,"unknown","no"),
(49,"management","married","tertiary","no",378,"yes","no","unknown",5,"may",230,1,-1,0,"unknown","no"),
(60,"admin.","married","secondary","no",39,"yes","yes","unknown",5,"may",208,1,-1,0,"unknown","no"),
(59,"blue-collar","married","secondary","no",0,"yes","no","unknown",5,"may",226,1,-1,0,"unknown","no"),
(51,"management","married","tertiary","no",10635,"yes","no","unknown",5,"may",336,1,-1,0,"unknown","no"),
(57,"technician","divorced","secondary","no",63,"yes","no","unknown",5,"may",242,1,-1,0,"unknown","no"),
(25,"blue-collar","married","secondary","no",-7,"yes","no","unknown",5,"may",365,1,-1,0,"unknown","no"),
(53,"technician","married","secondary","no",-3,"no","no","unknown",5,"may",1666,1,-1,0,"unknown","no"),
(36,"admin.","divorced","secondary","no",506,"yes","no","unknown",5,"may",577,1,-1,0,"unknown","no"),
(37,"admin.","single","secondary","no",0,"yes","no","unknown",5,"may",137,1,-1,0,"unknown","no"),
(44,"services","divorced","secondary","no",2586,"yes","no","unknown",5,"may",160,1,-1,0,"unknown","no"),
(50,"management","married","secondary","no",49,"yes","no","unknown",5,"may",180,2,-1,0,"unknown","no"),
(60,"blue-collar","married","unknown","no",104,"yes","no","unknown",5,"may",22,1,-1,0,"unknown","no"),
(54,"retired","married","secondary","no",529,"yes","no","unknown",5,"may",1492,1,-1,0,"unknown","no"),
(58,"retired","married","unknown","no",96,"yes","no","unknown",5,"may",616,1,-1,0,"unknown","no"),
(36,"admin.","single","primary","no",-171,"yes","no","unknown",5,"may",242,1,-1,0,"unknown","no"),
(58,"self-employed","married","tertiary","no",-364,"yes","no","unknown",5,"may",355,1,-1,0,"unknown","no"),
(44,"technician","married","secondary","no",0,"yes","no","unknown",5,"may",225,2,-1,0,"unknown","no"),
(55,"technician","divorced","secondary","no",0,"no","no","unknown",5,"may",160,1,-1,0,"unknown","no"),
(29,"management","single","tertiary","no",0,"yes","no","unknown",5,"may",363,1,-1,0,"unknown","no"),
(54,"blue-collar","married","secondary","no",1291,"yes","no","unknown",5,"may",266,1,-1,0,"unknown","no"),
(48,"management","divorced","tertiary","no",-244,"yes","no","unknown",5,"may",253,1,-1,0,"unknown","no"),
(32,"management","married","tertiary","no",0,"yes","no","unknown",5,"may",179,1,-1,0,"unknown","no"),
(42,"admin.","single","secondary","no",-76,"yes","no","unknown",5,"may",787,1,-1,0,"unknown","no"),
(24,"technician","single","secondary","no",-103,"yes","yes","unknown",5,"may",145,1,-1,0,"unknown","no"),
(38,"entrepreneur","single","tertiary","no",243,"no","yes","unknown",5,"may",174,1,-1,0,"unknown","no"),
(38,"management","single","tertiary","no",424,"yes","no","unknown",5,"may",104,1,-1,0,"unknown","no"),
(47,"blue-collar","married","unknown","no",306,"yes","no","unknown",5,"may",13,1,-1,0,"unknown","no"),
(40,"blue-collar","single","unknown","no",24,"yes","no","unknown",5,"may",185,1,-1,0,"unknown","no"),
(46,"services","married","primary","no",179,"yes","no","unknown",5,"may",1778,1,-1,0,"unknown","no"),
(32,"admin.","married","tertiary","no",0,"yes","no","unknown",5,"may",138,1,-1,0,"unknown","no"),
(53,"technician","divorced","secondary","no",989,"yes","no","unknown",5,"may",812,1,-1,0,"unknown","no"),
(57,"blue-collar","married","primary","no",249,"yes","no","unknown",5,"may",164,1,-1,0,"unknown","no"),
(33,"services","married","secondary","no",790,"yes","no","unknown",5,"may",391,1,-1,0,"unknown","no"),
(49,"blue-collar","married","unknown","no",154,"yes","no","unknown",5,"may",357,1,-1,0,"unknown","no"),
(51,"management","married","tertiary","no",6530,"yes","no","unknown",5,"may",91,1,-1,0,"unknown","no"),
(60,"retired","married","tertiary","no",100,"no","no","unknown",5,"may",528,1,-1,0,"unknown","no"),
(59,"management","divorced","tertiary","no",59,"yes","no","unknown",5,"may",273,1,-1,0,"unknown","no"),
(55,"technician","married","secondary","no",1205,"yes","no","unknown",5,"may",158,2,-1,0,"unknown","no"),
(35,"blue-collar","single","secondary","no",12223,"yes","yes","unknown",5,"may",177,1,-1,0,"unknown","no"),
(57,"blue-collar","married","secondary","no",5935,"yes","yes","unknown",5,"may",258,1,-1,0,"unknown","no"),
(31,"services","married","secondary","no",25,"yes","yes","unknown",5,"may",172,1,-1,0,"unknown","no"),
(54,"management","married","secondary","no",282,"yes","yes","unknown",5,"may",154,1,-1,0,"unknown","no"),
(55,"blue-collar","married","primary","no",23,"yes","no","unknown",5,"may",291,1,-1,0,"unknown","no"),
(43,"technician","married","secondary","no",1937,"yes","no","unknown",5,"may",181,1,-1,0,"unknown","no"),
(53,"technician","married","secondary","no",384,"yes","no","unknown",5,"may",176,1,-1,0,"unknown","no"),
(44,"blue-collar","married","secondary","no",582,"no","yes","unknown",5,"may",211,1,-1,0,"unknown","no"),
(55,"services","divorced","secondary","no",91,"no","no","unknown",5,"may",349,1,-1,0,"unknown","no"),
(49,"services","divorced","secondary","no",0,"yes","yes","unknown",5,"may",272,1,-1,0,"unknown","no"),
(55,"services","divorced","secondary","yes",1,"yes","no","unknown",5,"may",208,1,-1,0,"unknown","no"),
(45,"admin.","single","secondary","no",206,"yes","no","unknown",5,"may",193,1,-1,0,"unknown","no"),
(47,"services","divorced","secondary","no",164,"no","no","unknown",5,"may",212,1,-1,0,"unknown","no"),
(42,"technician","single","secondary","no",690,"yes","no","unknown",5,"may",20,1,-1,0,"unknown","no"),
(59,"admin.","married","secondary","no",2343,"yes","no","unknown",5,"may",1042,1,-1,0,"unknown","yes"),
(46,"self-employed","married","tertiary","no",137,"yes","yes","unknown",5,"may",246,1,-1,0,"unknown","no"),
(51,"blue-collar","married","primary","no",173,"yes","no","unknown",5,"may",529,2,-1,0,"unknown","no"),
(56,"admin.","married","secondary","no",45,"no","no","unknown",5,"may",1467,1,-1,0,"unknown","yes"),
(41,"technician","married","secondary","no",1270,"yes","no","unknown",5,"may",1389,1,-1,0,"unknown","yes"),
(46,"management","divorced","secondary","no",16,"yes","yes","unknown",5,"may",188,2,-1,0,"unknown","no"),
(57,"retired","married","secondary","no",486,"yes","no","unknown",5,"may",180,2,-1,0,"unknown","no"),
(42,"management","single","secondary","no",50,"no","no","unknown",5,"may",48,1,-1,0,"unknown","no"),
(30,"technician","married","secondary","no",152,"yes","yes","unknown",5,"may",213,2,-1,0,"unknown","no"),
(60,"admin.","married","secondary","no",290,"yes","no","unknown",5,"may",583,1,-1,0,"unknown","no");

select * from bank_details where y="yes";

select count(*) from bank_details;
select age,loan,month  from bank_details;
select `default`,count(*) from bank_details group by `default`;
select * from bank_details limit 5;
select count(*) from bank_details where age>33 and marital="single";
select count(*) from bank_details where age<33 and marital="married";

select * from bank_details where age=60 and job="retired";
select * from bank_details where education="unknown" or marital="single" and balance<500;
select * from bank_details where marital="single" and balance<500;

select distinct job from bank_details;
select * from bank_details order by age;
select * from bank_details order by age desc;
select * from bank_details where job="unknown" and age<45;
select avg(balance) from bank_details;
select * from bank_details order by balance limit 1;
select * from bank_details group by marital limit 1;
select marital,count(*) from bank_details group by marital;
select marital,count(*) from bank_details order by marital;

select * , min(balance) from bank_details;
select * from bank_details where balance in (select min(balance) from bank_details);
select min(balance) from bank_details;
select * from bank_details where balance = (select min(balance) minBalance from bank_details);
select * from bank_details order by balance desc limit 1;
select * from bank_details where loan="no" order by balance desc;
select avg(balance) from bank_details where job="admin.";
select * from bank_details where job="unknown" and age <=45;
select * from bank_details where education="primery" and job="unknown";
select * from bank_details where balance<0;
select job, balance,housing,count(job) as people from bank_details where housing="no" group by job;
select job, balance,housing from bank_details where housing="no";

DELIMITER &&
create procedure raka()
BEGIN
	select * from bank_details;
END &&

call raka()

DELIMITER &&
create procedure max_bal()
BEGIN
	select * from bank_details where balance in (select min(balance) from bank_details);
END &&

call max_bal()

DELIMITER &&
create procedure avg_bal_jobrole()
BEGIN
	select avg(balance) from bank_details where job="admin.";
END &&

DELIMITER &&
create procedure avg_bal_jobrole1(IN sudh varchar(30))
BEGIN
	select avg(balance) from bank_details where job=sudh;
END &&


DELIMITER &&
create procedure avg_bal_job1(IN v1 varchar(30) , IN v2 varchar(30))
BEGIN
	select * from bank_details where job=v1 and education=v2;
END &&


create view bank_view as select age,job,marital,balance,education from bank_details;

select avg(balance) from bank_view  where job='admin.';


#WINDOWING
show databases;
create database win_fun;
use win_fun;

create table ineuron_students(
student_id int,
student_batch varchar(40),
student_name varchar(40),
student_stream varchar(40),
student_marks int,
student_mail_id varchar(50));

select * from ineuron_students;

insert into ineuron_students values(100 ,'fsda' , 'saurabh','cs',80,'saurabh@gmail.com'),
(102 ,'fsda' , 'sanket','cs',81,'sanket@gmail.com'),
(103 ,'fsda' , 'shyam','cs',80,'shyam@gmail.com'),
(104 ,'fsda' , 'sanket','cs',82,'sanket@gmail.com'),
(105 ,'fsda' , 'shyam','ME',67,'shyam@gmail.com'),
(106 ,'fsds' , 'ajay','ME',45,'ajay@gmail.com'),
(106 ,'fsds' , 'ajay','ME',78,'ajay@gmail.com'),
(108 ,'fsds' , 'snehal','CI',89,'snehal@gmail.com'),
(109 ,'fsds' , 'manisha','CI',34,'manisha@gmail.com'),
(110 ,'fsds' , 'rakesh','CI',45,'rakesh@gmail.com'),
(111 ,'fsde' , 'anuj','CI',43,'anuj@gmail.com'),
(112 ,'fsde' , 'mohit','EE',67,'mohit@gmail.com'),
(113 ,'fsde' , 'vivek','EE',23,'vivek@gmail.com'),
(114 ,'fsde' , 'gaurav','EE',45,'gaurav@gmail.com'),
(115 ,'fsde' , 'prateek','EE',89,'prateek@gmail.com'),
(116 ,'fsde' , 'mithun','ECE',23,'mithun@gmail.com'),
(117 ,'fsbc' , 'chaitra','ECE',23,'chaitra@gmail.com'),
(118 ,'fsbc' , 'pranay','ECE',45,'pranay@gmail.com'),
(119 ,'fsbc' , 'sandeep','ECE',65,'sandeep@gmail.com'),
(120,'fsbc','rani','it',50,'rani@gmail.com');

alter table ineuron_students update student_id=120 where student_name='rani'

select student_batch ,sum(student_marks) from ineuron_students group by student_batch;
select student_batch ,min(student_marks) from ineuron_students group by student_batch;
select student_batch ,max(student_marks) from ineuron_students group by student_batch;
select student_batch ,avg(student_marks) from ineuron_students group by student_batch;

select count(student_batch) from ineuron_students;
select count(distinct student_batch) from ineuron_students;
select student_batch,count(*) from ineuron_students group by student_batch;
select * from ineuron_students;

select student_name from ineuron_students where student_marks in
(select max(student_marks) from ineuron_students where student_batch='fsda');

select * from ineuron_students where student_batch='fsda' order by student_marks desc limit 2,2;
select * from ineuron_students where student_batch='fsda' order by student_marks desc limit 3,1;
select * from ineuron_students where student_batch='fsda' order by student_marks desc limit 4,1;
select * from ineuron_students where student_batch='fsda' order by student_marks desc limit 5,1;
select * from ineuron_students where student_batch='fsda' order by student_marks desc limit 2,3;


select student_id,student_batch,student_stream,student_marks ,
row_number() over(order by student_marks) as 'row_number' from ineuron_students;

select student_id,student_batch,student_stream,student_marks ,
row_number() over(partition by student_batch order by student_marks) as 'row_number' from ineuron_students;

select * from (select student_id,student_batch,student_stream,student_marks ,
row_number() over(partition by student_batch order by student_marks desc) as 'row_num' from ineuron_students) as test where row_num=1;

select student_id,student_batch,student_stream,student_marks ,
rank() over( order by student_marks) as 'row_rank' from ineuron_students;

select student_id,student_batch,student_stream,student_marks ,
row_number() over( order by student_marks) as 'row_number' ,
rank() over(order by student_marks desc) as 'row_rank'
from ineuron_students;

select student_id,student_batch,student_stream,student_marks ,
row_number() over(partition by student_batch order by student_marks) as 'row_number' ,
rank() over(partition by student_batch order by student_marks desc) as 'row_rank'
from ineuron_students;

select * from (select student_id,student_batch,student_stream,student_marks ,
row_number() over(partition by student_batch order by student_marks) as 'row_number' ,
rank() over(partition by student_batch order by student_marks desc) as 'row_rank'
from ineuron_students) as test where row_rank=1;

select student_id,student_batch,student_stream,student_marks ,
row_number() over( order by student_marks) as 'row_number' ,
rank() over( order by student_marks desc) as 'row_rank',
dense_rank() over(order by student_marks desc) as 'dense_rank'
from ineuron_students;

select * from (select student_id,student_batch,student_stream,student_marks ,
row_number() over( order by student_marks) as 'row_number' ,
rank() over( order by student_marks desc) as 'row_rank',
dense_rank() over(order by student_marks desc) as 'dense_rank'
from ineuron_students) as test where `dense_rank`=3;

