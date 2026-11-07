use atif;

show tables;

create temporary table temp_table
(
first_name varchar(50),
last_name varchar(50),
fav_movie varchar(100),
age int
);
insert into temp_table(first_name,last_name,fav_movie,age)
values("Ali","Hassan","3 idots",25);
select * from temp_table;

-- Best use case

create temporary table salary_over_50k
select * from stu_dept
where salary>=5000;

select * from salary_over_50k;