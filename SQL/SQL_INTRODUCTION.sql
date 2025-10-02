-- SQL INTRODUCTION:
-- SQL:
-- structured query language
-- command
-- my sql , sql lite ,postgresql , oracle
-- to communicate to data using quert language

-- DBMS AND RDMS:
-- data's will be stored manually like file format or csv format
-- structure
-- i.e rows and columns
-- how this query all build with the help of commands
-- DDL , DML , DQL , TCL
-- DATA DEFINITION LANGUAGE:
-- create , alter , truncate , drop , rename 

-- DATA MANIPULATION LANGUAGE:
-- insert ,update,  delete

-- DATA QUERY LANGUAGE:
-- select

-- TRANSACTION CONTROL LANGUAGE:
-- commit, rollback , savepoint 

-- what is database?
-- every data stored in an table format inside the database
-- data:
-- collection of users meaningful records
-- database SLA -KK NAGAR 
-- table
-- employee, students, placements, social media 
-- ctrl a and ctrl + / for changing into command line.

-- database creation:
-- syntax:
-- create database sla_kknagar;
-- use sla_kknagar;

-- table creation:
-- syntax:
-- create table tablename(column1 datatype,column2 datatype....colunmN datatype);
-- create table Placement(Roll_no int, name varchar(225), course varchar(25));

-- variable character holding 255
-- ascii values
-- american standard code for information and interchange


create database sla_kknagar;
use sla_kknagar;
create table Placement(Roll_no int, name varchar(225), course varchar(25));
insert into Placement values(119, 'Malai', 'python' ),
(120, 'saranya', 'java' ),(121, 'barath' ,'dotnet'),
(121 , 'hemnath' , java),(122 , 'santhosh' , 'PHP'),
(123 ,'karthick ' , 'python');
select * from Placement;
desc Placement;









