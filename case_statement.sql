use atif;
show tables;
select distinct * from student;

select distinct adress , name , city , age ,
case
	when age>=25 && age<40 then "adult"
    when age<=18  then "child"
    when age>=40  then "old"
    when age>18 && age<25 then "young"
end as new_col,
case
	when adress=1001 then 55000
    when adress=1002 then 50000
    when adress=1003 then 60000
    when adress=1004 then 55000
    when adress=1005 then 35000
    when adress=1006 then 54000
    when adress=1007 then 48000
    when adress=1008 then 45000
    when adress=1009 then 75000
end as new_salary
from student
order by adress;

select * from stu_dept;