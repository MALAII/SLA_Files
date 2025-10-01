use sla_kknagar;
create table place_depart(id int not null, name varchar(225) unique , course_detail varchar(30));
-- constraints are column level which are used to check the given data are unique
insert into place_depart values(011, 'ram' , 'python'), (012, 'ajay' , 'java'), (013, 'kamal', 'html'),
(014, ' parthi','css'),(015 ,'kamal' ,'dotnet'), (015 , 'sakthi', 'mvc'),(016, 'yamuna','php'),(017,'kirthiga','sql'),(018 ,'mithun','beta'),
(019,'jayasree','oracle');
insert into place_depart values(null,'riyaz' ,'aws');
insert into place_depart values(020, 'prakash', 'python');
insert into place_depart values(011, null , 'datascience');
select * from place_depart;
-- constraint is column level constraint it will restrict the row values according to its types of constraints
-- not null constraint:
-- will accept the duplicates but will not accept the null values 
-- unique constraint:
-- unique constraint will not allow duplicate but accepts the null values
-- null there should be no empty row values and unique only accept unique data not repeated values
