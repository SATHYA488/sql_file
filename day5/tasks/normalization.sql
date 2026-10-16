create database normalization;
use normalization;

create table students(
stud_id int primary key,
studname varchar(25)

);

create table course(
course_id int primary key,
coursename varchar(25),
trainername varchar(25)
);

create table enrollment (
enroll_id int primary key,
stud_id int,
course_id int,

foreign key (stud_id) references students(stud_id),
foreign key (course_id) references course(course_id)
);




insert into students values (101,"sathya"),(102,"sownya"),(201,"saravana"),(202,"sathish"),(301,"siva"),(302,"sabari");
insert into course values (1,"python","mohan"),(2,"java","santhosh");
insert into enrollment values (1,101,1),(2,102,1),(3,201,2),(4,202,2),(5,301,1),(6,302,2);