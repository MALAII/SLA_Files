-- update triggers:
use records;
create table customer (acc_no integer primary key, cust_name varchar(20), avail_balance decimal);
insert into customer values (1000, 'malai', 7000);
insert into customer values(1001, 'sara', 12000);

create table mini_statement (acc_no integer, avail_balance decimal, foreign key(acc_no) references customer(acc_no));
select * from customer;

delimiter //
create trigger update_cus
before update on customer
for each row
begin
insert into mini_statement values(old.acc_no, old.avail_balance);
end //

delimiter ;

update customer set avail_balance=avail_balance+2000 where acc_no=1000;  -- updated four times
update customer set avail_balance=avail_balance+2000 where acc_no=1001;  -- updated four times

select * from mini_statement;   -- updated four times 
select * from customer;  -- updated  four times

-- exercise:
use records;
create table customers (acc_no integer primary key, cust_name varchar(20), avail_balance decimal);
 insert into customers values (1000, "Fanny", 7000);
insert into customers values (1001, "Peter", 12000);   

                              
create table mini_statements (acc_no integer, avail_balance decimal, foreign key(acc_no) references customers(acc_no));
select * from customers;


delimiter //
create trigger update_cust
before update on customers
for each row
begin
insert into mini_statements values (old.acc_no, new.avail_balance);
end // 
delimiter ;

update customers set avail_balance=avail_balance+2000 where acc_no=1000;
update customers set avail_balance=avail_balance+2000 where acc_no=1001;

select * from mini_statements;
select * from customers;