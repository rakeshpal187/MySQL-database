show databases;
use ineuron;
show tables;
create table customers(
customerid int not null,
customername varchar(100),
contactname varchar(100),
address varchar(100),
city varchar(100),
postalcode varchar(100),
country varchar(100),
PRIMARY KEY(customerid)
);

select * from customers;

create table orders(
orderID int not null,
customerID int,
EmployeeID int,
OrderDate datetime,
ShipperID int,
PRIMARY KEY(orderid)
);

select * from orders;
drop table orders;

insert into customers values(1,'Rakesh','Rakesh','Bangalore','Bangalore',909090,'India');
insert into customers values(2,'Aman','Aman','Kanpur','Kanpur',999090,'India');
insert into customers values(3,'Hari','Hari','Bombay','Bomabay',998090,'India');
insert into customers values(4,'Gopal','Gopal','Delhi','Delhi',988890,'India');
insert into customers values(5,'Mohan','Mohan','Noida','Noida',609090,'India');
insert into customers values(6,'Ankit','Ankit','Lucknow','Lucknow',889090,'India');
insert into customers values(7,'Gagan','Gagan','jAIPUR','Jaipiur',239090,'India');
insert into customers values(8,'Kamal','Kamal','Allahabad','Allahanbad',213100,'India');
insert into customers values(9,'Jai','Jai','Jammu','Jammu',123090,'India');
insert into customers values(10,'Prakash','Prakash','Kashmir','Kashmir',989090,'India');


INSERT into orders values (901,1,1,sysdate(),211010);
INSERT into orders values (902,12,3,sysdate(),211110);
INSERT into orders values (903,2,4,sysdate(),211210);
INSERT into orders values (904,4,7,sysdate(),211310);
INSERT into orders values (905,5,8,sysdate(),211410);
INSERT into orders values (906,4,4,sysdate(),211510);
INSERT into orders values (907,9,18,sysdate(),211710);
INSERT into orders values (908,3,15,sysdate(),211810);
INSERT into orders values (909,34,17,sysdate(),211910);
INSERT into orders values (910,11,19,sysdate(),211011);

select * from customers c LEFT JOIN orders o
ON c.customerid=o.customerid;
select count(*) from customers c LEFT JOIN orders o
ON c.customerid=o.customerid;

select c.customerid,c.customername,c.city,o.orderID,o.EmployeeID from customers c LEFT JOIN orders o
ON c.customerid=o.customerid;
select c.customerid,c.customername,c.city,o.orderID,o.EmployeeID from customers c RIGHT JOIN orders o
ON c.customerid=o.customerid;

select count(*) from customers c RIGHT JOIN orders o
ON c.customerid=o.customerid;
select c.customerid,c.customername,c.city,o.orderID,o.EmployeeID from customers c INNER JOIN orders o
ON c.customerid=o.customerid;

select c.customerid,c.customername,c.city,o.orderID,o.EmployeeID from customers c  JOIN orders o
ON c.customerid=o.customerid;