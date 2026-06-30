use atif;
show tables;

create table student(
stuID int ,
stuName varchar(45) , 
age int );

desc student;

insert into student(stuID,stuName,age)
value(3,"Ahmad",23);

select * from student;