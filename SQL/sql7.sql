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

-- task for view:
create database records;
use records;
create table placement (rollno int primary key , name varchar(50), course varchar(50), marks int, eligibility varchar(20));
insert into placement values (101, 'malai', 'python', 85, 'eligible'),
(102, 'saranya', 'java', 70, 'eligible'),
(103, 'barath', 'dotnet', 45, 'eligible'),
(104, 'kishore', 'php', 60, 'eligible');
select *from placement;

create view studentview as select marks, eligibility from placement;
select * from studentview;
