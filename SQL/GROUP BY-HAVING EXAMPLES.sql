-- group by having examples:

use sla_kknagar;
CREATE TABLE employees3 (EmployeeID INT PRIMARY KEY,name VARCHAR(50),Department VARCHAR(50),Salary DECIMAL(10, 2));
INSERT INTO employees3 values(1, 'Alice Johnson', 'HR', 60000.00),
(2, 'Bob Smith', 'HR', 70000.00),
(3, 'Charlie Brown', 'IT', 80000.00),
(4, 'David Wilson', 'IT', 90000.00),
(5, 'Eva Green', 'Sales', 50000.00),
(6, 'Frank White', 'Sales', 50000.00),
(7, 'Grace Black', 'IT', 80000.00);
select *from employees3;

-- questions:
-- What is the total salary paid in each department?
select department, sum(salary) from employees3 group by department;

-- What is the average salary of employees in each department?
select department, avg(salary) from employees3 group by department;

-- What is the highest salary in each department?
select department, max(salary) from employees3 group by department;

-- What is the lowest salary in each department?
select department, min(salary) from employees3 group by department;

-- How many employees are there in each department?
select department ,count(employeeID) from employees3 group by department;

-- How many distinct salary values are there in each department?
select distinct(salary), count(department) from employees3 group by salary;

-- having clause which is used inside the group by to filter the records.
-- "as" is alias name gigven for easy filtering
-- use "as" for having clause
-- Which departments have more than 2 employees?
select department, count(employeeID) as dept from employees3 group by department having dept>2;

-- Which departments have a total salary greater than 150000?
select department, sum(salary) as sala from employees3 group by department having sala>150000;

-- Which departments have an average salary greater than 70000?
select department, avg(salary) as sala from employees3 group by department having sala>70000;

-- Which departments have a maximum salary less than 90000?
select department, max(salary) as sala from employees3 group by department having sala<90000;


