-- Views means virtual table 
-- view used to restrict the particular data to other users. 
-- more than one views can be created for a table.
-- view can able to create, update and delete
-- views cannot able to be inserted

-- SYNTAX FOR VIEWS:
-- create view viewname as select columname , columname2, ... from tablename;
-- select * from viewname;

use sla_kknagar;
create table record (id int,name varchar(10), age int, location varchar (10), marks int, course varchar(10));
insert into record values (1, 'mukesh', 23,' chennai',85, 'python'),
(2, 'harish', 24,' madurai',85, 'java'),
(3, 'kishore', 26,' delhi',99, 'dotnet'),
(4, 'barath', 28,' vellore',94, 'aws'),
(5, 'rajesh', 24,' trichy',88, 'oracle'),
(5, 'rajesh', 24,' trichy',74, 'testing'),
(6, 'siva', 25,' pondy',72, 'devops');
create view v1 as select name , marks , course from record;
delete from record where course='testing';
select * from record;  --  for employee access
select * from v1;
create view sam as select name , id from record;
select * from sam;

-- update views: will affect the original table data also
update sam set name ='MUKESH' where name='mukesh';
select *from sam;

delete from sam where name='MUKESH';
select * from sam; 

drop view sam;           -- will only drop the view not the original table

-- union and union all:
create table student( id int, fname varchar (20) ,phoneno bigint, age int);
insert into student values(1, 'abc' , 2345678934567,25),
(2, 'dcc' , 23456345367,23),
(3, 'dsj', 09876456987,27);

create table teacher (id int, name varchar(20), gender char(1), age int);
insert into teacher values(4, 'erere', 'M' , 25),
(5, 'gfriere', 'M' , 34),
(6, 'shfure', 'F' , 28);


select age from student union select age from teacher;
-- union will combine both table data and give the unique values

select age from student where age>=25 union select age from teacher;
select age from student where age>=25 union all select age from teacher;

select age from student union all select age from teacher;
-- union all will combine both the table data also include duplicates

-- task for view:
use sla_kknagar;
create table placements (student_name varchar(30), course varchar(20), age int, eligibility varchar(3), arrears int);
insert into placements values('karthick' , 'python', 20, 'yes' , 0),
('barath' , 'java', 20, 'no' , 3),
('arun' , 'dotnet', 20, 'yes' , 0),
('aravind' , 'aws', 20, 'no' , 2),
('kadhir' , 'ds', 20, 'yes' , 0),
('vinay' , 'da', 20, 'no' , 6),
('ashok' , 'react', 20, 'yes' , 0);
create view recruitment as select course, arrears, eligibility from placements;
select * from recruitment;














