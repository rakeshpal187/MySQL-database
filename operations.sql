show databases;
use ineuron;
select * from telcochurn;
select * from telcochurn where gender='Female';
select count(*) from telcochurn where gender='Female';

create view telco_females as
select * from telcochurn where gender='Female';

select * from telco_females limit 5;
select count(*) from telco_females;

show databases;
use ineuron;
show tables;
select * from customers;

create view cust as
select customername,address from customers ;

select * from cust;
drop tables cust;

infogenx.hr@gmail.com