set SQL_SAFE_UPDATES = 1;

create database createstudents;
use createstudents;

create table students (
studentsid int primary key auto_increment,
 studentname varchar(25),
 age decimal,
 department varchar(25),
 city varchar(25)
);

insert into students (studentname,age,department,city) values ("ravi",22,"CSE","chennai");


select * from students;



insert into students (studentname,age,department,city) values ("arun",23,"IT","Madurai");
insert into students (studentname,age,department,city) values ("bala",21,"ECE","chennai");
insert into students (studentname,age,department,city) values ("priya",24,"CSE","Bangalore");


update students set city="bangalore" where studentsid="2";
update students set age=25 where studentsid="3"; 
update students set age=24 ,department="IT" ,city="chennai" where studentsid="1";

update students set city="madurai" where department="CSE";

delete from students where city="Madurai";

insert into students (studentname,age,department,city) values ("seeta",21,"Chemistry","vellore");
update students set age=26 where studentsid=2;
delete from students where studentsid=3;

