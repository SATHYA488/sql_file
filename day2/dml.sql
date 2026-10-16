create database govrempty;
use goverempty;

create table govrstaffs(
  sno int primary key auto_increment,
  staffname varchar(20),
  department varchar(20),
  staffwork varchar(20),
  staffyear varchar(20)
  
  );
  
  insert into govrstaffs ( staffname,department,staffwork,staffyear) values ("Mr.N. Anand","rural minister ","Panchayat Union",2026);
  
  select * from govrstaffs;
  
  ALTER table govrstaffs DROP column createdby  ;
  
    
    
 
