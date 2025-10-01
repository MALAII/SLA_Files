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

select email from st_record;






