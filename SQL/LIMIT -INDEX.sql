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
 --  chat explanation:
--  using the index the table will create a hidden mini version of the original table called index table in which the datas are 
-- arranged in alphabetical order and numerically orderd so that it will be easy to fetch data with the specific position .
--  example;
-- name=charlie the index will search the "c" alphabeticall order its more faster than where while fetching data in large tables.

-- syntax for index:
-- create index index_name on table_name(column_name);

-- example:
use records;
CREATE TABLE Employees (
        EmpID INT PRIMARY KEY,
        Name VARCHAR(50),
        Department VARCHAR(50),
         Salary DECIMAL(10,2)
     );
      INSERT INTO Employees VALUES
     (1, 'Alice', 'HR', 60000.00),
    (2, 'Bob', 'HR', 70000.00),
    (3, 'Charlie', 'IT', 80000.00),
    (4, 'David', 'IT', 90000.00),
     (5, 'Eva', 'Sales', 50000.00),
     (6, 'Frank', 'Sales', 55000.00),
	(7, 'Grace', 'IT', 75000.00);
select * from employees;
create index ind_name on employees(name);
select * from employees where name='charlie';
show index from employees;  -- will show the mini version of arranged hidden index table that points to search the data in original table.
show indexes from employees;
 

