-- union and union all:
 -- union - Combines the results of two or more SELECT queries into a single result set, and removes duplicate rows.
 -- union all - Combines the results of two or more SELECT queries, including duplicate rows.
 
create table student( id int, fname varchar (20) ,phoneno bigint, age int);
insert into student values(1, 'abc' , 2345678934567,25),
(2, 'dcc' , 23456345367,23),
(3, 'dsj', 09876456987,27);

create table teacher (id int, name varchar(20), gender char(1), age int);
insert into teacher values(4, 'erere', 'M' , 25),
(5, 'gfriere', 'M' , 34),
(6, 'shfure', 'F' , 28);

-- union:
select age from student union select age from teacher;  -- without duplicates 
-- union will combine both table data and give the unique values

-- union all:
select age from student union all select age from teacher;  -- with duplicates
-- union all will combine both the table data also include duplicates

select age from student where age>=25 union select age from teacher where age>=25;
select age from student where age>=25 union all select age from teacher where age>=25;

