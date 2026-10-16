create database emptable;
use emptable;

create table product(
  productId int primary key auto_increment,
  productname varchar(20),
  productprice decimal,
  productquantity varchar(20),
  createdby varchar(20) default "admin",
   createdat date,
  updatedby varchar(20) default "admin",
  updatedat date



);

insert into product (productname,productprice, productquantity,createdat,updatedat) values ("alcohol",600,300,now(),now())

select * from product;

