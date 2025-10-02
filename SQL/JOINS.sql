-- Joins:
-- Joins which is  used to combine two or more tables with  the matched common column values.

-- rules for joins:
-- 1. common column name must be their 
-- 2. datatype must be same for both the tables

-- types of joins:
-- 1. inner join 
-- only common values will be displayed in both the tables
-- syntax for inner join:
-- select  column1 , column2, ..... columnN from tablename1 innerjoin tablename2 ON table1.columnname = table2.columnname;

-- 2.full outer join
--   right outer join:
-- it will display all records in the right side tables and matched records in the left side tables

--    left outer join:
-- it will display all records in the left side table and matched records in the right side table.

--    full outer join :
-- with the help of union can do it .
-- both the table records with uncommon values will be shown.

use sla_kknagar;
create table airports( id int not null , name varchar(20) not null, age int not null, address char (25), salary decimal(18, 2) , primary key(id));
insert into airports values(1, 'ramesh', 32, 'ahmehabad', 2000.00),
(2, 'khilan', 25, 'delhi', 1500.00),
(3, 'kaushik', 23, 'kota', 2000.00),
(4, 'chaitali',25, 'mumbai',6500.00),
(5, 'hardik', 27, 'bhopal', 8500.00),
(6, 'komal', 22, 'hyderbad' , 4500.00),
(7, 'muffy', 24, 'indore', 10000.00);
select * from airports;
create table nationalairports( oid int not null, data varchar (20) not null, airport_id int not null, amount decimal(18, 2));
insert into nationalairports values(102,'2009-10-08 00:00:00',3,3000.00),
(100,'2009-10-08 00:00:00',3,1500.00),
(101,'2009-11-20 00:00:00',2,1560.00),
(103,'2008-05-20 00:00:00',4,2060.00);

--   inner join:
select * from airports inner join nationalairports ON airports.id = nationalairports.airport_id;

-- left join:
select id , name , amount, data from airports left join nationalairports on airports.id=nationalairports.airport_id;  
-- will shows the matched column data and others are shown as null 
-- leftside of left join is table 1 and right side of left join is table 2

-- right join:
select oid , airport_id , name from nationalairports right join airports on airports.id= nationalairports.airport_id;
-- right side of the right join will shows the matched values in the left side and left side of the right joi will show the unmatched values

-- TASK:
-- joins questions:
-- create a table for products and table for orders
-- create 2 tables and do inner join 
-- 10 records in one table and 12 records in another table 
-- with  help of left join or right join to show that mismatched two data
-- uncommon values should be returned

use sla_kknagar;
CREATE TABLE Products (ProductID INT PRIMARY KEY,ProductName VARCHAR(50),Price DECIMAL(10,2));
insert into Products values
(1, 'Laptop', 60000),
(2, 'Phone', 30000),
(3, 'Tablet', 20000),
(4, 'Headphones', 3000),
(5, 'Keyboard', 1500),
(6, 'Mouse', 800),
(7, 'Monitor', 12000),
(8, 'Printer', 7000),
(9, 'Camera', 45000),
(10, 'Smartwatch', 8000);

create table Orderss (OrderID INT PRIMARY KEY,ProductID INT,Quantity INT);
insert into Orderss values
(101, 1, 2),   
(102, 2, 1),   
(103, 3, 4),   
(104, 5, 3),   
(105, 6, 5),   
(106, 7, 1),   
(107, 11, 2),  
(108, 12, 1),  
(109, 4, 2),   
(110, 8, 1),   
(111, 13, 2),  
(112, 9, 1); 
select products.ProductID, products.ProductName, orderss.OrderID, orderss.ProductID as OrderProductID from Products  left join Orderss on products.ProductID = orderss.ProductID ;

