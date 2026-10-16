create database selecttable;
use selecttable;

create table employeedetails (
employeeid int primary key auto_increment,
employeename varchar(25),
age varchar(25),
degree varchar(25),
experience varchar(25),
salary decimal,
workshift varchar(25),
city varchar(25),
createsby varchar(24) default "admin" 

);

insert into employeedetails (employeename,age,degree,experience,salary,workshift,city) values ("shri sabari",22,"BSC","3.5yrs",50000,"day shift","salem");


select * from employeedetails;
select employeename,age,salary,city from employeedetails;
select * from employeedetails where city="chennai";
select * from employeedetails where salary>45000; 
select * from employeedetails where age<24; 
select * from employeedetails where salary>35000 and city="chennai"; 
select * from employeedetails where salary>40000 or city="chennai"; 
select * from employeedetails where degree not in ("BSC");
select * from employeedetails where salary between 30000 and 40000;
select * from employeedetails where salary between 30000 and 45000 and city="chennai";
select * from employeedetails where city in ("salem","dharmapuri");
select * from employeedetails where city is not null;
select distinct degree from employeedetails;
select age as dob,workshift as shiftwork,salary as income from employeedetails;

