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
