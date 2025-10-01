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


-- limit class:
-- limit class is used to specify the number of rows you want to return from your query
-- syntax:
-- select column1 , column2, ...columnN from tablename limit number;

select * from airports limit 2;
select * from airports order by name desc limit 3;

-- index:
-- index are used to find values within a specific column more quickly 
-- my sql normally searches sequentially through a column.
-- the larger the column , the more expensive the operation, update takes more time select takes less time
 
 select * from customer;
 show index from customer;
 show index from airports;
 
 create index last_name_index on customer (last_name);
 show indexes from customer;
 select * from customer where last_name='puff';


