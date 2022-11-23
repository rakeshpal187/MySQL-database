show databases;
use ineuron;
select * from telcochurn;

select * from telcochurn order by customerID asc;
select contract,count(*) as cnt from telcochurn
group by contract order by cnt asc;

select * from telcochurn
group by contract order by contract asc;

select customerID from telcochurn order by customerID desc;

select gender ,count(*) from telcochurn group by gender;

select gender,count(*) from telcochurn order by gender desc;

select contract,gender,count(*) as cnt from telcochurn
group by contract,gender having cnt>800 order by contract asc limit 2;

select * from telcochurn limit 10;