create database aggrigate;
use aggrigate;

create table workdetails(

nameid int primary key auto_increment,
workname varchar(25),
age decimal,
department varchar(25),
salary varchar(25),
city varchar(25)

);



insert into workdetails (workname,age,department,salary,city) values ("reechitha",20,upper("be"),60000,"dharmapuri");

select * from workdetails;

select department ,count(*) as no_of_employee from workdetails group by department;

select department ,sum(salary) as "total salary" from workdetails group by department;

select department ,avg(salary) as "total salary" from workdetails group by department;
select city ,count(*) as "no of employee " from workdetails group by city;

-- simple moderate

select department ,count(*) from workdetails group by  department having count(*)>=1;

select department ,sum(salary) as total_salary from workdetails group by department having sum(salary)>=100000;


select department ,avg(salary) as total_salary from workdetails group by department having avg(salary)>=40000;


-- moderate

select department ,count(*) as total_employee , avg(salary) as avg_salary from workdetails group by department having  count(*)>=2;

select city , sum(salary) as Total_salary , max(salary) as Max_salary from workdetails group by city having sum(salary)>=80000;

select department , count(*) as total_employee ,sum(salary) as total_salary ,avg(salary) as avg_salary ,min(salary) as min_salary ,max(salary) from workdetails group by department having count(*)>=2 and avg(salary)>=40000 order by avg_salary desc;



