create database sla_kknagar;
use sla_kknagar;
create table Placement(Roll_no int, name varchar(225), course varchar(25));
desc Placement;
insert into Placement values(119, 'Malai', 'python' ),
(120, 'saranya', 'java' ),(121, 'barath' ,'dotnet'),
(121 , 'hemnath' , 'java'),(122 , 'santhosh' , 'PHP'),
(123 ,'karthick ' , 'python');
select * from Placement;