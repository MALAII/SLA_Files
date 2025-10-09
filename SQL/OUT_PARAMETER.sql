-- Out parameter: (externally returns something with the help of select and aggregate functions)
-- the value of an out parameter can be changed inside the procedure and it returns new values passed back when the function is called.
-- an out parameter is used to pass a parameter as output or display like the select operator , but implicitly (through a set value) 
-- out is output: the output you should be given in out

-- for getting the count of team using out parameter:
use procedures;
delimiter //
create procedure getcustomercountybyteam(in p_team varchar(10), out p_count int)
begin
select count(team) into p_count from customer where team = p_team;
end //
delimiter ;
call getcustomercountybyteam( 'mern', @team_count);
select @team_count as total_customers;
select * from customer;

-- for getting the highest id count from customers:
delimiter //
create procedure disp_max(OUT highestid int)
begin
select max(id) into highestid from customer;
end //
delimiter ;
call disp_max(@p);
select @p as maximum_customer;