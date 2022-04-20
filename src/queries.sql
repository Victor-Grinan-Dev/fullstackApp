create database fullstack;

use fullstack;

create table users (
    id INT primary key,
    firtname VARCHAR(20) not null,
    email VARCHAR(20) not null,
    mobile BIGINT
);

/*
drop database if exists employeedb;
drop database if exists employee;
create database employeedb;
use employeedb;

create table employee(
    employeeId integer primary key,
    firstname varchar(20) not null,
    lastname varchar(20) not null,
    department varchar(20),
    salary decimal(6,2)
); 

insert into employee values(1, 'Matt', 'River', 'IT', 6000);
insert into employee values(2, 'Mary', 'Winter', 'manager', 8000);
insert into employee values(3, 'Victor', 'Grinan', 'CEO', 7000);
insert into employee values(4, 'Victoria', 'Secret', 'ICT', 5000);
insert into employee values(5, 'Roberto', 'Pineda', null, null);
insert into employee (employeeId, firstname, lastname) values(6, 'Maria', 'Caracoles');
insert into employeedb.employee values(7, 'John', 'Doe', 'manager', 5000);
insert into employee values(8, 'Pekka', 'Haavisto', 'sales', 7000);
insert into employee values(9, 'Sanna', 'Marin', 'customer service', 4000);
insert into employee values(10, 'Jane', 'Doe', 'HR', 3000);
insert into employee values(11, 'Mary_Ann', 'Rock', 'cleaner', 1500);
insert into employee values(12, 'Mary-Ann', 'Williams', 'intern', null);


select * from employee;

select lastname, firstname, salary from employee order by lastname asc, firstname asc;

select lastname, firstname, salary from employee order by salary;

select columns from tablelist where search_criteria group by column_or_computed_value having filterin_criteria order by order_criteria;

 <, >, <=, >=, <>, !=, = is null, is not null


select firstname, count(*) as amount from employee group by firstname;
select firstname, -count(salary) as missingSalary from employee;

select * from employee ordered by rand();

select min(salary) as lower, max(salary) as higest from employee;
select sum(salary) as total from employee;

select firstname, lastname from employee where lastname in ('River', 'Winter'); 
select firstname, lastname from employee where lastname NOT IN ('River', 'Winter'); /

select firstname from employee where salary BETWEEN 5000 AND 7000;




select lastname, firstname from employee order by lastname, firstname; 
select lastname, firstname from employee order by lastname, firstname desc; 
select firstname, lastname, department from employee where department is not null;
select count(*) as 'amount of Doe'  from employee where lastname = 'Doe';
select count(*) as 'amount of fair salaries'  from employee where salary BETWEEN 4000 AND 6000;
select count(*) as 'amount of unfair salaries'  from employee where salary not BETWEEN 4000 AND 6000;

select count(salary) as 'amount paying salaries'  from employee;
select count(*) - count(salary) as 'amount not getting salaries' from employee;

select sum(salary) as total from employee;
select * as 'amount of fair salaries' from employee where salary BETWEEN 4000 AND 6000;

select round(avg(salary), 2) as average from employee;


select firstname, lastname from employee where firstname like 'V%';
select lastname, firstname from employee where lastname like 'M%';


select firstname, lastname from employee where firstname like '_e%';
select lastname, firstname from employee where lastname like '_i%';


select firstname, lastname from employee where firstname like '%a';
select lastname, firstname from employee where lastname like '%o';


select * from employee where firstname like 'Mary_Ann';
 
select * from employee where firstname like '%\_%';

select * from employee where firstname like '%Mary%';
select * from employee where firstname like 'Mary%';
select * from employee where firstname like 'Mary_%';
select * from employee where firstname like 'Mary';

select firstname, salary from employee where lastname in ('Doe', 'Smith') order by salary desc;

select firstname, lastname, case 
when salary is null then 'salary missing'
when salary=(select max(salary) from employee) then 'max salary'
when salary=(select min(salary) from employee) then 'min salary'
else '-' end as 'minMax' from employee;

select firstname, lastname, case 
when salary is null then 'salary missing'
when salary=(select max(salary) from employee) then 'max salary'
when salary=(select min(salary) from employee) then 'min salary'
else salary end as 'minMax' from employee;


select * from employee where salary is null;

update employee set department='intern', salary=null where employeeId= 5;
*/