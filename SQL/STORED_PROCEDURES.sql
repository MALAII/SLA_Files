-- Stored Procedures:
-- 1.stored procedures means we are going to work with the stored data inside the database where 
-- we are going to fetch the data easily .
-- code reusability.
-- 2.it reduces the network traffic 
-- 3.it gives the centralized access in business point of view
-- 4.inside the stored procedures we can use if statement ,if else statement ,loop, switch, etc,..
-- 5. it gives the business owners to secure the data

-- syntax for stored procedures:
-- create procedure procedure name()
-- begin
-- sequence of sql statements select * from table
-- end
-- call procedure name()

use records;
create table store(id int, name varchar(10), salary int);
insert into store values(1, 'sindhu', 45000);
insert into store values(2, 'harish', 24100);
insert into store values(3, 'arun', 30000);
select * from store;

-- for printing the entire table:
delimiter //
create procedure fun()
begin
select * from store;
end //
delimiter ;
call fun();

-- for returning the row:
-- delimiter //
-- create procedure func( in sid int)
-- begin
-- select * from store where id=sid;
-- end //
-- delimiter ;
-- call func(2);

create database procedures;
use procedures;
create table customer(id int, name varchar(10), team varchar(10), country varchar(20));
insert into customer values(1, 'malai', 'mern', 'india'), (2, 'sara', 'python',  'sri lanka'), (3, 'hemnath', 'java', 'australia'),
(4, 'sachin', 'da', 'asia');
select * from customer;

-- for returing the row:
delimiter $$
create procedure fun( in p_country varchar(20))
begin
select name, team from customer where country= p_country;
end $$
delimiter ;
call fun('sri lanka');

-- for aggregate functions:
delimiter //
create procedure countcountry (in p_country varchar(20))
begin 
select count(country) as total from customer where country=p_country;
end //
delimiter ;
call countcountry('india');
insert into customer values(5, 'raj','mern', 'india');

-- for inserting values:
delimiter //
create procedure addcustomer(
in p_customername varchar(10),
in p_team varchar(10),
in p_country varchar(20))
begin
insert into customer (name , team, country) values (p_customername, p_team , p_country);
end //
delimiter ;
call addcustomer( 'pavithra', 'dotnet', 'india');
select * from customer;

-- for deleting the row:
delimiter //
create procedure deletecustomerbycountry(in p_country varchar(20))
begin
delete from customer where country= p_country;
end //
delimiter ;
call deletecustomerbycountry('australia');









