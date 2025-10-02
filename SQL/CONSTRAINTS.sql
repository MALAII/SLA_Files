-- constraints:

use sla_kknagar;
create table place_depart(id int not null, name varchar(225) unique , course_detail varchar(30));
-- constraints are column level which are used to check the given data are unique
insert into place_depart values(011, 'ram' , 'python'), (012, 'ajay' , 'java'), (013, 'kamal', 'html'),
(014, ' parthi','css'),(015 ,'kamal' ,'dotnet'), (015 , 'sakthi', 'mvc'),(016, 'yamuna','php'),(017,'kirthiga','sql'),(018 ,'mithun','beta'),
(019,'jayasree','oracle');
insert into place_depart values(null,'riyaz' ,'aws'); --  not satisfied
insert into place_depart values(020, 'prakash', 'python'); -- satisfied
insert into place_depart values(011, null , 'datascience'); -- satisfied
select * from place_depart;

-- constraint is column level restrictions it will restrict the row values according to its types of constraints
-- not null constraint:
-- will accept the duplicates but will not accept the null values .

-- unique constraint:
-- unique constraint will not allow duplicate but accepts the null values.
-- null there should be no empty row values and unique only accept unique data not repeated values

-- check constraint:
-- it ensures that the condition given using check condition is getting satisfied .

create table car(carname varchar(5), price int check(price>=500000));
insert into car values('audi' , 550000);    --  satisfied
insert into car values('i10' ,499999);        --  not satisfied
insert into car values('benz' , 500000);  --    satisfied

-- default constraints:
-- set a value for a column when  no value is provided upon insertion
create table car1(carname varchar(5), price int, location varchar(50) default 'chennai');
insert into car1 values('audi' , 550000  );   
insert into car1 values('i10' ,499999  );        
insert into car1 values('benz' , 500000, 'bangalore');  
select * from car1;

-- primary key:
-- A column (or set of columns) that uniquely identifies each row in a table.
-- Key points for primary key
-- Must be unique for every row.
-- Cannot be NULL.
-- Each table can have only one primary key.

create table pri_table(id int, name varchar(10), city varchar(15), primary key(id));
-- primary key should be unique so we taken id 
insert into pri_table values(1, 'jayasree', 'bangalore');
insert into pri_table values(2, 'niveditha', 'chennai');
insert into pri_table values(3 , 'vishwa','rio');
insert into pri_table values(4, 'harun','chicago');
insert into pri_table values(5, 'jaya', 'bangalore');
insert into pri_table values(6, 'jaya', 'bangalore');
select * from pri_table;

-- foreign key:
-- A column (or set of columns) that links to the primary key of another table, enforcing referential integrity.
-- Key points for foreign key:
-- Can have duplicate values.
-- Can be NULL (optional).
-- Ensures that a value in one table exists in another table.

create table fore_table(fid int , fname varchar(10), foreign key(fid) references pri_table(id)); --  references of tablaname(column name)
-- (you cannot add a foreign key value if it doesn’t exist in the parent table)
insert into fore_table values(1, 'swetha');
insert into fore_table values(2, 'malai');
insert into fore_table values(3, 'saranya');
insert into fore_table values(4, 'kishore');
insert into fore_table values(5, 'barath');
insert into fore_table values(6, 'barath');
select *from fore_table;



