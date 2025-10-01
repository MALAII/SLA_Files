-- create :
-- create database
-- create table
-- create database
-- length (9) int

use sla_kknagar;
create table st_record(id int,name varchar(255),gender char(1));
insert into st_record values(115,'Hari','M'),(116,'Arav','M'),(117,'Body','M'),(118,'Paul','M'),(119,'Arun','M');
select * from st_record;

-- alter table tablename add columnname datatype
alter table st_record add email varchar(20);

-- update tablename set columnname where cloumnname=value;
-- where class is used for give unic datas.
-- where class filter the record
-- unique data's to insert
update st_record set email='hari@gmail.com' where id=115;
update st_record set email='arav@gmail.com' where id=116;
update st_record set email='body@gmail.com' where id=117;
update st_record set email='paul@gmail.com' where id=118;
update st_record set email='arun@gmail.com' where id=119;

select email from st_record;
select * from st_record;

delete from st_record where email='hari@gmail.com';
-- truncate will remove all data but structure will be appeard
-- drop
truncate table st_record;
-- drop table st_record;

-- orderby
use sla_kknagar;
select *from st_record;
select *from st_record order by id desc;
select *from st_record order by name;
-- rename
alter table st_record rename to stdz;
select * from stdz;

select * from stdz order by name;

select id from stdz where id=115 and id=116;
select *from stdz;

select *from stdz order by name;
-- where class is used to filter the row values
select * from stdz where id=115 and name='Hari';
select * from stdz where id=116 or id=50;
select * from stdz where id!=117;
select * from stdz where id=118;
select * from stdz where id>=115;
select * from stdz where id<=115;

-- aggregate functions
-- min()
-- max()
-- avg()
-- count()
-- sum()
select max(id) from stdz;
select count(id) from stdz;
select avg(id) from stdz;
select sum(id) from stdz;





 






