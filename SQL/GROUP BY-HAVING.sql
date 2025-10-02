-- group by:
-- Groups rows that have the same values in one or more columns and allows you to perform aggregate functions on each group.
-- having :
-- Filters groups created by GROUP BY based on a condition.

use sla_kknagar;
-- group by is used to group rows  that have the same value into it.
-- group by is depended with aggregate functions.
-- always the group by follows with aggregate functions.
-- syntax: for group by is 
-- select columnname1,columnname2 aggregatefunction from tablename group by columnname1,columname2;

create table data (orderid INT PRIMARY KEY,customer_name VARCHAR(100),location VARCHAR(100),category VARCHAR(50),unitprice INT,quantity INT,sales INT);
insert into data values(1, 'Sarah Lee', 'Mexico City', 'Electronics', 150, 1, 150),
(2, 'Michael Wong', 'Toronto', 'Furniture', 300, 1, 300),
(3, 'Emily Davis', 'San Francisco', 'Furniture', 150, 3, 450),
(4, 'David Kim', 'Vancouver', 'Clothing', 50, 5, 250),
(5, 'Sophia Patel', 'Tokyo', 'Electronics', 250, 2, 500),
(6, 'Liam Nguyen', 'Mexico City', 'Furniture', 400, 1, 400),
(7, 'Isabella Rossi', 'Toronto', 'Clothing', 75, 3, 225),
(8, 'Ethan Müller', 'San Francisco', 'Electronics', 180, 2, 360),
(9, 'Olivia Sato', 'Vancouver', 'Furniture', 350, 1, 350),
(10, 'Noah Dupont', 'Tokyo', 'Clothing', 60, 4, 240),
(11, 'Emma Hernandez', 'Mexico City', 'Electronics', 220, 2, 440),
(12, 'Jacob Kowalski', 'Toronto', 'Furniture', 280, 2, 560),
(13, 'Ava Morales', 'San Francisco', 'Clothing', 55, 5, 275),
(14, 'William Tanaka', 'Vancouver', 'Electronics', 190, 3, 570),
(15, 'Mia Dupuis', 'Tokyo', 'Furniture', 320, 1, 320),
(16, 'Alexander Ivanov', 'Mexico City', 'Clothing', 65, 4, 260),
(17, 'Isabella Garcia', 'Toronto', 'Electronics', 230, 2, 460),
(18, 'Daniel Moreno', 'San Francisco', 'Furniture', 290, 2, 580),
(19, 'Sophia Nguyen', 'Vancouver', 'Clothing', 70, 3, 210),
(20, 'John Smith', 'Tokyo', 'Electronics', 200, 2, 400);
select * from data;

-- questions:
-- What is the total sales amount for each product category?
select category, sum(sales) from data group by category;   -- after select whatever you use it should be used after group by

-- What is the average unit price in each location?
select location , avg(unitprice) from data group by location;

-- How many orders has each customer placed?
select customer_name, count(quantity) from data group by customer_name;

-- What is the total quantity sold per location?
select location, sum(quantity)from data group by location;

-- What is the highest sales value recorded in each category?
select category, max(sales) from data group by category;

-- What is the minimum unit price in each product category?
select category ,min(unitprice) from data group by category;

-- What is the total number of orders in each location?
select location , sum(quantity) from data group by location;

-- What is the average quantity sold per customer?
select customer_name , avg(quantity) from data group by customer_name;

-- What is the total sales per location and category?
select location,category , sum(sales)from data group by location, category;

-- How many unique location bought items from each category?
select distinct(location),count(category) from data group by location; -- will remove duplicates

-- having clause:
-- What are the categories with total sales greater than 1500?
select category ,sum(sales) as S from data group by category having S>1500;

-- which locations have an average unit price greater than 200?
select location , avg(unitprice) as U from data group by location having U>200;

-- List customers who purchased more than 3 items in total.
select customer_name,sum(quantity) as items from data group by customer_name  having items>3;

-- Which locations have more than 2 orders?
select location, count(orderid) as O from data group by location having O >2;

-- What categories have an average quantity sold greater than 2?
select category , avg(quantity) quan from data group by category having quan >2;

-- Find customers whose total sales exceed 500.
select customer_name , sum(sales)as Ss from data group by customer_name having Ss>500;

-- Which product categories in each location have total sales over 400?
select location, category , sum(sales) as two from data group by location, category having two>400;

-- What locations have sold more than 10 items in total?
select location, sum(quantity) as quan from data group by location having quan>10;

-- List categories with maximum sales per order above 400.
select category , max(sales) as Sale from data group by category having Sale>400;

-- Which customers have placed more than one order?
select customer_name , count(orderid) as id from data group by customer_name having id>1;

