-- VIEWS:
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
   














