create database goveremp;
use goveremp;

create table officestaff(

staffid int primary key auto_increment,
staffname varchar(25),
party varchar(25),
location varchar(25),
 email varchar(25)
);

insert into officestaff (staffname,party,location,email) values ("	SOWMIYA ANBUMANI","	PMK","	DHARMAPURI","	mladharmapuri@tn.gov.in");

 select * from officestaff;