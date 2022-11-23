show databases;
use ineuron;
select * from telcochurn;

select count(*) from telcochurn where gender='Male' ;

select gender , count(*) from telcochurn
group by gender;

select contract , count(*) from telcochurn
group by contract;

select contract ,gender, count(*) from telcochurn
group by contract,gender order by contract asc;

select round(sum(totalcharges),2) from telcochurn;

select sum(totalcharges) from telcochurn;
select max(totalcharges) from telcochurn;
select min(totalcharges) from telcochurn;
select avg(totalcharges) from telcochurn;