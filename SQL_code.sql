show databases;
drop database theerach;

create database Theerach;
use theerach;
create table tk_test (
	name varchar(50),
    class varchar(50),
    sub varchar(50)
);
select * from tk_test;
insert into tk_test (name,class,sub ) 
values ('tk','12th','tamil');
insert into tk_test  (name,class,sub)
values ('xx','11th','english'),('yy','11th','english')
;
select database();

show databases;
use theerach;
create table tk_test01 (
	name varchar(10)
);
insert into tk_test01 (name)
values('tk'),('M');
select * from Tk_test01;
use theerach;
create table BookRejo(
	Book_id int auto_increment primary key,
    Title varchar(25) not null ,
    Author varchar(25),
    Price float(25)
);
show tables;
desc BookRejo;
insert into BookRejo (Title,Author,Price)
values ('SQL2','JK',3000),('SQL3','LK',310),('SQL4','AK',330),('SQL5','TK',400);
select * from BookRejo;

SELECT CURDATE();
select curdate() + interval 2 day;
select curdate() + interval 2 week;

use theerach;
alter  table bookrejo add thee int;
alter table bookrejo modify thee float;
alter table bookrejo drop thee;
alter table bookrejo rename column price to prices;
alter table bookrejos rename to bookrejo;
desc bookrejo;
alter table bookrejos rename to bookrejo;
desc bookrejo;


CREATE TABLE emp (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE,
    experience INT
);

INSERT INTO emp (name, department, salary, joining_date, experience) VALUES
('John Doe', 'HR', 50000, '2020-06-15', 5),
('Jane Smith', 'Finance', 60000, '2019-08-25', 7),
('Robert Brown', 'IT', 70000, '2018-03-10', 8),
('Emily Davis', 'HR', 55000, '2021-01-20', 3),
('Michael Wilson', 'Finance', 75000, '2017-09-14', 10),
('Sarah Johnson', 'IT', 72000, '2016-05-22', 9),
('David White', 'Marketing', 58000, '2022-07-11', 2),
('Sophia Lee', 'Sales', 62000, '2020-02-18', 4),
('James Martin', 'Marketing', 64000, '2019-11-30', 6),
('Olivia Clark', 'Sales', 67000, '2018-06-05', 7),
('William Hall', 'IT', 80000, '2015-08-12', 12),
('Emma Walker', 'HR', 52000, '2021-10-03', 2),
('Liam Allen', 'Finance', 70000, '2018-04-17', 8),
('Mia King', 'Marketing', 60000, '2020-07-09', 5),
('Noah Scott', 'Sales', 65000, '2017-12-29', 10),
('Charlotte Wright', 'HR', 54000, '2022-05-16', 1),
('Benjamin Turner', 'IT', 82000, '2016-03-23', 11),
('Evelyn Adams', 'Finance', 73000, '2015-10-28', 12),
('Alexander Baker', 'Marketing', 59000, '2020-06-12', 4),
('Ava Gonzalez', 'Sales', 68000, '2019-02-27', 6),
('Daniel Nelson', 'IT', 78000, '2017-05-05', 9),
('Grace Carter', 'HR', 53000, '2021-03-15', 3),
('Henry Mitchell', 'Finance', 71000, '2018-11-22', 7),
('Lucas Perez', 'Marketing', 62000, '2019-10-08', 6),
('Amelia Roberts', 'Sales', 69000, '2018-08-14', 8),
('Ethan Stewart', 'IT', 77000, '2016-07-19', 10),
('Harper Phillips', 'HR', 51000, '2022-09-21', 2),
('Jack Torres', 'Finance', 72000, '2015-12-31', 11),
('Ella Campbell', 'Marketing', 58000, '2021-06-01', 3),
('Mason Parker', 'Sales', 64000, '2020-01-30', 5),
('Sophia Evans', 'IT', 75000, '2017-04-15', 9),
('Logan Edwards', 'HR', 50000, '2023-01-10', 1),
('Isabella Collins', 'Finance', 76000, '2016-08-18', 10),
('Carter Stewart', 'Marketing', 60000, '2019-05-25', 7),
('Lily Morris', 'Sales', 66000, '2018-09-09', 8),
('Sebastian Cooper', 'IT', 81000, '2015-07-03', 12),
('Zoe Richardson', 'HR', 52000, '2021-12-15', 2),
('Nathan Ramirez', 'Finance', 74000, '2017-11-10', 9),
('Stella Murphy', 'Marketing', 59000, '2020-03-20', 5),
('Elijah Martinez', 'Sales', 67000, '2019-07-07', 6),
('Madison Bell', 'IT', 79000, '2016-02-14', 10),
('Levi Sanders', 'HR', 55000, '2022-04-01', 1),
('Scarlett Torres', 'Finance', 73000, '2015-09-30', 12),
('Dylan Foster', 'Marketing', 62000, '2018-12-21', 6),
('Hannah Ross', 'Sales', 70000, '2017-06-11', 9),
('Gabriel Ward', 'IT', 76000, '2016-10-05', 11),
('Layla Peterson', 'HR', 54000, '2020-11-18', 3),
('Samuel Bennett', 'Finance', 71000, '2019-09-24', 7),
('Victoria Gray', 'Marketing', 63000, '2018-01-13', 8),
('Matthew Jenkins', 'Sales', 68000, '2017-02-09', 10);

SELECT * FROM emp;
select sum(salary) from emp;
select count(id) from emp;
select min(salary) from emp;
select max(salary) from emp;
select avg(salary) from emp;

update emp set salary = 5000 where id = 1;
update emp set salary = (salary - 1);
select salary from emp;
select name,salary from emp order by salary limit 3;
select name,salary from emp group by name,salary limit 3;

#like

select * from emp ;
select * from emp where name like "a%";
select * from emp where name like "%a";
select * from emp where name like "_a%";
select * from emp where name like "%_a";
select * from emp where name like "%a%";
select * from emp where name like "%__a%";

show databases;
use theerach;
insert into emp (name, department, salary, joining_date, experience)
values('Tk','Wrok',30000,null,222);
delete from  emp where name = 'Tk';
#SET SQL_SAFE_UPDATES = 0;

select experience,if(experience >3,"not less then 3","less then 3") from emp order by experience;
select experience ,if(id =4,"id is equal to 4","id is not equql 4") from emp;
delete from emp where experience = 111 or experience = 222;
select id ,if(id=4,"#id=4","i!=4") from emp;

select * from emp;
delete from emp where name = 'Tk';
select department,sum(salary) from emp group by department order by sum(salary) desc limit 3;
select department,count(name) as count from emp  group by department having department not in ('IT');
select name,experience,if(experience=3,"selected","not seleceted") as result from emp having experience=3;
select name,experience,"Selected" as result from emp having experience=3;
SELECT name, experience, concat(name , " you selected")
FROM emp 
HAVING experience = 3;

####sub qurys
use theerach;
select * from emp;
select * from emp where name = ( select name from emp Where name like ("M%") limit 1);
SELECT * 
FROM emp 
WHERE name = (SELECT name FROM emp WHERE name LIKE 'M%');
select *,concat(name," , is max salary getting person" )as result from emp where salary = ( select max(salary) from emp);
select * from emp where name in ( select name from emp where name like ("W%") );
select * from emp where name in ( select name from emp where name like ("%a%") );

select name,max(id) from emp 
where salary = (select max(salary) from emp ) group by name;
select experience,name from emp where not exists(select * from emp where experience = 55) ;

##joins
select * from STUDENTTABLE;
select * from STUDENTCOURSENEW;

#inner joins
use theerach;
select t1.name,t2.coursename from STUDENTTABLE t1 inner join STUDENTCOURSENEW t2 on t1.roll_no = t2.roll_no;
select t2.coursename,count(t1.name) from STUDENTTABLE t1 inner join STUDENTCOURSENEW t2 on t1.roll_no = t2.roll_no group by t2.coursename;


-----------------------------------------------------------------------------------------------------------------------
create table cars(
	make varchar(100),
    model varchar(100),
    year int,
    value decimal(10,2)
);
insert  into cars (make,model,year,value) 
values ("Porsche","911 GT3",2000,200.0),("Porsche 001","911 GT3",2000,400.0),("Porsche 002","911 GT3",2000,500.0);

delimiter //
create procedure procedure_test3()
begin 
	select * from cars;
end //
delimiter ;
call procedure_test3;

delimiter //
create procedure car_id( in cars_make varchar(100))
begin 
	select * from cars where make= cars_make;
end // 
delimiter ;
call car_id ('TK');

delimiter //



##procedure()
delimiter //
create procedure double_no (
	in input_no int,
    out result int 
)
begin 
	set result = input_no * 2 ;
end //
delimiter ;

call double_no(59,@output);
select @output;

delimiter //
create procedure count_cars(
	in input_no decimal (10,2),
    out output_no decimal (10,2),
    out max_cars decimal (10,2)
)
begin 
	select count(*),max(value) from cars where value = input_no ;
end // 
delimiter ;

call count_cars(100.00,@ouput);
select output ;

alter table cars add  (start_date date ) ;
insert into cars (start_date) values('2025-01-01');
select * from cars;

delimiter //
create procedure test_01 (
	in input_no int ,
    out result int
    )
begin
	set result = 5 * input_no ;
end //
delimiter ;

call test_01(5,@result);
select @result;

####procedure with count,max,min,avg

delimiter //
create procedure cmma_procedure1 (
	out total_count decimal (10,2),
    out min_value decimal(10,2),
    out max_value decimal (10,2),
    out avg_values decimal (10,2),
    out min_date date
)
begin 
	select count(*),max(value),min(value),avg(value),min(start_date) into total_count,min_value,max_value,avg_values,min_date from cars ;
end //
delimiter ;

call cmma_procedure1(@count,@max,@min,@avg,@min);
select @count as total_count ,@max as max_value, @min as min_value, @avg as avg_value, @min as min_date;
select * from cars ;


delimiter //
create procedure testoo0(
	input decimal (10,2),
    out total_count decimal (10,2),
    out max_values decimal (10,2),
    out min_values decimal (10,2),
    out avg_values  decimal (10,2),
    out min_date date
)
begin 
	select count(value),max(value),min(value),avg(value),min(start_date) 
    into total_count ,max_values ,min_values ,avg_values ,min_date from cars;
end //
delimiter ;
call testoo0(2015,@count,@max,@min,@avg,@min);
select @count,@max,@min,@avg,@min;

###functions
delimiter //
create function function_add(a int , b int)
returns int
deterministic 
begin 
	declare sum int;
    set sum = a + b ;
    return sum ;
end //
delimiter ;

select function_add(5,7);

delimiter //
create function function_sub(a int , b int)
returns int
deterministic
begin 
	declare sum int ;
    set sum = a - b ;
    return sum ;
end //
delimiter ; 
select function_sub(5,7);

##ex

Delimiter //
create procedure year_filter (in input_year year, in model_cars varchar(50),out max_values decimal(10,2) )
begin 
	select max(value) from cars where year = input_year or model = model_cars ;
end //
delimiter ;
call year_filter(2017,'911 GT3',@max);

delimiter //
create procedure max_id_student (out max_id int)
begin 
	select max(Roll_no) from studenttable;
end //
delimiter ;
call max_id_student(@max);
select * from studenttable;

delimiter //
create function function_mult (a int , b int )
returns int
deterministic 
begin 
	declare sum int;
    set sum = a * b ;
    return sum ;
end //
delimiter ;
select function_mult(2,4);

delimiter //
create procedure name_count_procedure(out count_of decimal (10,2),out max_values decimal (10,2),out name varchar(20) )
begin 
	select count(*),max(value),make from cars group by make into name,count_of,max_values ;
end //
delimiter ;
call name_count_procedure(@count,@max,@name);
select @count as count,@max as max;
select * from cars ;

delimiter //
create procedure update_test (in input_year int , in input_name varchar (50))
begin 
	UPDATE cars SET make = input_name WHERE year = input_year;
    select * from cars ;
end //
delimiter ;
call update_test(2022,'Mercedes-Benz GLC');
SET SQL_SAFE_UPDATES = 0;
