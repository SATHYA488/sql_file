create database createemployee;
use createemployee;

create table employee (
employeeid int primary key ,
employeename varchar(20),
department varchar(20),
email varchar(30),
salery decimal,
createdby varchar(20) default "submitted"

);
   
   insert into employee (employeeid,employeename,department,email,salery) values (5,"S.vinush","fullstack developer","vinush7342@gmail.com",83500);
   
   select * from employee;
   
   insert into employee (employeeid,employeename,department,email,salery) values (6,"priya","testing developer","priya234@gamil.com",74000);
