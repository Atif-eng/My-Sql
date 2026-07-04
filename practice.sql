use practice;

create table customer(
id int ,
age int ,
city varchar(70) ,
product varchar(50))

INSERT INTO customer(id,age,city,product)
value (1005,37,"Islamabad","Apple");

select * from customer;
desc customer;

select city from customer;

select age from customer;

select age,city from customer;

select age,city from customer
where city="Islamabad";

select * from customer where age >30;