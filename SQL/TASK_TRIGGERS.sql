-- TASK:
use records;
create table college_student(name varchar(10),id int,age int,primary key(id));
select * from college_Student;
create table college_audit(id int,audit_description varchar(100),primary key(id));

-- DELIMITER $$ -- start point of the query

CREATE TRIGGER afterinsertcoll 
AFTER INSERT ON college_Student 
FOR EACH ROW 
-- BEGIN  -- using begin keyword you can put multiple triggers one block (compound statement block)
             -- (new table) 
   INSERT INTO college_audit VALUES (NEW.id, CONCAT('A new row inserted ', DATE_FORMAT(NOW(), '%d-%m-%y %h:%i:%s %p')));-- date_format is a inbuilt method 
                                          -- date-month-year-anti meridian(am)-seconds-post meridian(pm)
-- END$$ 

-- DELIMITER ; -- end point of the query

insert into college_student values('malai', 249, 34);
select * from college_Student;
select * from college_audit;

-- TASK:
use records;
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dob DATE
);
CREATE TABLE birthday_log (
    emp_id INT,
    message VARCHAR(100)
);
DELIMITER $$

CREATE TRIGGER after_employee_insert
AFTER INSERT ON employee
FOR EACH ROW
BEGIN
    INSERT INTO birthday_log
    VALUES (
        NEW.emp_id,
        CONCAT(' Happy Birthday ', NEW.name, '! Added on ', DATE_FORMAT(NOW(), '%d-%m-%Y'))
        );

END$$

DELIMITER ;
INSERT INTO employee VALUES (1, 'Malai', '1998-10-06');
INSERT INTO employee VALUES (2, 'Sara', '1999-05-11');
insert into employee values(3 , 'barath', '2003-09-24');
insert into employee values(4, 'raj', '2004-06-12');

SELECT * FROM employee;
SELECT * FROM birthday_log;








