create database productbased;
use productbased;

create table product(
  productid int primary key auto_increment,
  productname varchar(25),
  category varchar(25),
  price decimal,
  stock varchar(20),
  createdby varchar(20) default "admin",
  updatesat date

);

insert into product (productname,category,price,stock,updatesat) values ("gokul sandal","powder",39,240,now());


select * from product;