#SELECT wala part show here
show databases;
use intro_sql;
create table empinfo(
fname varchar(50),
lname varchar(50),
id int not null,
age int,
city varchar(100),
state varchar(100),
primary key(id)
);

select * from empinfo;

insert into empinfo values ('John','Jones',99980,45,'Payson','Arizona');
insert into empinfo values('Mary','Jones',99982,25,'Payson','Arizona');
insert into empinfo values('Eric','Edwards',88232,32,'San Diego','California');
insert into empinfo values('Mary Ann','Edwards',88233,32,'Phoenix','Arizona');
insert into empinfo values('Ginger','Howell',98002,42,'Cottonwood','Arizona');
insert into empinfo values('Sebastian','Smith',92001,23,'Gila Bend','Arizona');
insert into empinfo values('Gus','Gray',22322,35,'Bagdad','Arizona');
insert into empinfo values('Mary Ann','May',32326,52,'Tucson','Arizona');
insert into empinfo values('Erica','Williams',32327,60,'Show Low','Arizona');
insert into empinfo values('Leroy','Brown',32380,22,'Pinetop','Arizona');
insert into empinfo values('Elroy','Cleaver',32382,22,'Globe','Arizona');


show tables;
select fname,lname,city from empinfo;
select fname,lname,city,age from empinfo where age>30;
select fname,lname,city,state from empinfo where fname like "J%";
select * from empinfo;
select fname as First_name,lname as Last_name from empinfo where lname like "%s";
select fname,lname,age from empinfo where lname like "%illia%";
select * from empinfo where fname="Eric";
select count(*) from empinfo;
select * from empinfo where age=22 or age=32;
select * from empinfo where age in (22,32);
