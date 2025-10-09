-- Triggers: automatically triggers an event for an actions
-- A trigger is a special type of stored procedure that automatically
-- runs when an event occurs in the database server.
-- in triggers also we have set of sequence statements 
-- any changes or modifications made in database triggers are executed.

-- example:
-- 1. new data is getting inserted in a emp table we need to send a welcome email
-- 2.order purchase confirmation email has to be done.

-- types of triggers:
-- DML Trigger (insert,update,delete)
-- DDL Trigger (create,alter,drop)
-- LOGON Trigger (user session)

 use records;
create table passengers (name varchar(10), id int , address varchar(10), chargers int , primary key(id));
select * from passengers;
insert into passengers values('lalith ', 459, 'goa', 5000);
insert into passengers values('ashwin ', 460, 'jammu', 19000);
insert into passengers values('anjali', 461, 'manali', 41000);
insert into passengers values('preethi', 462, 'cochin', 3200); 
insert into passengers values('prathap ', 463, 'srinagar', 6500);
insert into passengers values('jaswanth ', 464, 'swiss', 3500);
  
--   syntax:
--   create trigger triggername 
--   before/after
--   insert/update/delete on/from table name
--   for each row set new.existing column = new column

create trigger flights
before insert
on passengers
for each row 
set new .chargers =new.chargers-2000;

-- drop trigger if exists flights;

insert into passengers values( 'jameer', 744, 'rajpur', 10000);
select * from passengers;

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(30),
  price INT
);
INSERT INTO products VALUES (1, 'Laptop', 55000);
INSERT INTO products VALUES (2, 'Mobile', 20000);
INSERT INTO products VALUES (3, 'Tablet', 15000);
INSERT INTO products VALUES (4, 'Headphones', 3000);
INSERT INTO products VALUES (5, 'Keyboard', 1200);
select * from products;

-- CREATE TRIGGER discount_trigger
-- BEFORE INSERT
-- ON products
-- FOR EACH ROW
-- SET NEW.price = NEW.price - 500;  -- this trigger dropped 

insert into products values(6 , 'earpods' , 2000);
-- insert into products values(7, 'sony' , 100000);
-- insert into products values(8, 'bajaj', 200000);
-- delete from  products where product_id=7;
-- delete from products where product_id=8;

SELECT * FROM products;
use records;
drop trigger if exists discount_trigger;
create trigger discount_trigger
before insert
on products
for each row 
set new.price= new.price / 2 ; -- for 50% discount on price

insert into products values (9, 'panasonic', 100000);
insert into products values(10, 'sony' , 200000);




