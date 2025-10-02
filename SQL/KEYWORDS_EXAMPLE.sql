-- create :
-- create database
-- use database
-- create table
-- length (9) int only 9 integers can be allowed in int datatype.

use sla_kknagar;
create table st_record(id int,name varchar(255),gender char(1));
insert into st_record values(115,'Hari','M'),(116,'Arav','M'),(117,'Body','M'),(118,'Paul','M'),(119,'Arun','M');
select * from st_record;

-- alter syntax:  -- used to add columns
-- alter table tablename add columnname datatype
alter table st_record add email varchar(20);

-- update syntax: -- used to add values into the columns -- UPDATE only changes the data in existing columns.
-- update tablename set columnname where cloumnname=value;
-- where class is used for give unique data.
-- where class filter the record
-- unique data's to insert
update st_record set email='hari@gmail.com' where id=115;
update st_record set email='arav@gmail.com' where id=116;
update st_record set email='body@gmail.com' where id=117;
update st_record set email='paul@gmail.com' where id=118;
update st_record set email='arun@gmail.com' where id=119;
select email from st_record;

-- delete syntax: deletes specific row data
-- DELETE FROM TableName WHERE condition;
-- delete from st_record where id=118;

-- drop syntax: deletes the entire table
-- drop table tablename ;
-- drop table st_record;

-- truncate syntax:
-- Deletes all rows from a table, but keeps the table structure (columns, constraints) intact.
-- truncate table tablename;
-- truncate table st_record;

-- orderby
create database sla_kknagar;
use sla_kknagar;
select * from st_record;
select * from st_record order by id  desc;
select * from st_record order by name;

-- rename
alter table st_record rename to stdz;  -- Once you rename a table, the old table name no longer exists, so you cannot use it in queries anymore.
select * from stdz;

select * from stdz order by name; -- ascending order
select * from stdz where id=115 and name='Hari';
select * from stdz where id=116 or id=50;
select * from stdz where id!=117;
select name from stdz where id=118;
select * from stdz where id>=115;
select * from stdz where id<=115;

-- aggregate functions:
-- Functions that perform calculations on a set of values and return a single result.
-- They are mostly used with GROUP BY or to summarize data
-- min()
-- max()
-- avg()
-- count()
-- sum()
select max(id) from stdz;
select count(id) from stdz;
select avg(id) from stdz;
select sum(id) from stdz;




