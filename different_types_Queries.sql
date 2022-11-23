#pip install csvkit
# csvsql --dialect mysql --snifflimit 100000 sales_data_final.csv > output_sales.sql

drop table sales1;
create database sales;
use sales;

CREATE TABLE sales1 (
	order_id VARCHAR(15) NOT NULL, 
	order_date VARCHAR(15) NOT NULL, 
	ship_date VARCHAR(15) NOT NULL, 
	ship_mode VARCHAR(14) NOT NULL, 
	customer_name VARCHAR(22) NOT NULL, 
	segment VARCHAR(11) NOT NULL, 
	state VARCHAR(36) NOT NULL, 
	country VARCHAR(32) NOT NULL, 
	market VARCHAR(6) NOT NULL, 
	region VARCHAR(14) NOT NULL, 
	product_id VARCHAR(16) NOT NULL, 
	category VARCHAR(15) NOT NULL, 
	sub_category VARCHAR(11) NOT NULL, 
	product_name VARCHAR(127) NOT NULL, 
	sales DECIMAL(38, 0) NOT NULL, 
	quantity DECIMAL(38, 0) NOT NULL, 
	discount DECIMAL(38, 3) NOT NULL, 
	profit DECIMAL(38, 8) NOT NULL, 
	shipping_cost DECIMAL(38, 2) NOT NULL, 
	order_priority VARCHAR(8) NOT NULL, 
	`year` DECIMAL(38, 0) NOT NULL
);

select * from sales1;
set session sql_mode = '' ;

load data infile
'D:/sales_data_final.csv'
into table sales1
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

select str_to_date(order_date,'%m/%d/%Y') as order_date from sales1;

alter table sales1
add column order_date_new date after order_date;

update sales1
set order_date_new = str_to_date(order_date,'%m/%d/%Y');

select * from sales1;

alter table sales1
add column ship_date_new date after ship_date;

update sales1
set ship_date_new = str_to_date(ship_date,'%m/%d/%Y');

SET SQL_SAFE_UPDATES= 0;

select * from sales1 where ship_date_new='2011-01-05';
select * from sales1 where ship_date_new<'2011-01-05';
select * from sales1 where ship_date_new>'2011-01-05';

select * from sales1 where ship_date_new between '2011-01-04' and '2011-08-30';

select now();
select curdate();
select curtime();

select * from sales1 where ship_date_new < date_sub(now(), interval 1 week);

select count(*) from sales1 where ship_date_new < date_sub(now(), interval 1 week);


select date_sub(now() , interval 1 week);
select date_sub(now(), interval 30 year);

select year(now());
select dayname(now());
select dayname('2022-07-20 21:10:10');

alter table sales1
add column flag date after order_id;

select flag from sales1;

update sales1
set flag = now();

select * from sales1;

update sales1
set year = str_to_date(ship_date,'%m/%d/%Y');

alter table sales1
modify column year datetime;

select year from sales1;

select * from sales1;

alter table sales1
add column Year_New int;

select Year_New from sales1;
alter table sales1
add column Month_New int;
select Month_New from sales1;

alter table sales1
add column Day_New int;

-- update sales1 set month_new = month(order_date_new);
-- update sales1 set day_new = str_to_date(order_date , '%d');
-- update sales1 set year_new = str_to_date(order_date ,'%Y');

update sales1 set month_new = month(order_date_new);
update sales1 set day_new = day(order_date_new);
update sales1 set year_new = year(order_date_new);
select * from sales1;

select month(order_date_new) from sales1;

select year_new, avg(sales) from sales1 group by year_new;
select year_new, sum(sales) from sales1 group by year_new;
select year_new  , min(sales) from sales1 group by year_new;
select year_new  , max(sales) from sales1 group by year_new;

select year_new , sum(quantity) from sales1 group by year_new;

select year_new,(sales*discount+shipping_cost)  as CTC from sales1 group by year_new;
select order_id ,discount , if(discount > 0 ,'yes' , 'no') as discount_flag from sales1 ;

alter table sales1
add column discount_flag varchar(20) after discount;

select discount_flag, count(discount_flag) from sales1 group by discount_flag;

select discount_flag , count(*) from sales1 group by discount_flag ;

select count(*) from  sales1 where discount > 0 ;
select count(*) from  sales1 where discount = 0 ;
select count(*) from  sales1 where discount < 0 ;

update sales1
set discount_flag = if(discount > 0, 'yes', 'no');

select * from sales1;