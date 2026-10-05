use atif;
show tables;

select * from student;

-- group by
select province,city
from student
group by province,city
;

select province,city
from student
group by 5,4    -- same as above but use index
;

select distinct province , avg(age),max(age),min(age),count(city)
from student
group by province
;

-- order by
select * from student
order by name;

select * from student
order by name asc;

select * from student
order by name desc;

select * from student
order by name, age;

select * from student
order by name , age desc;  -- now name is in ascending and age is descinding order