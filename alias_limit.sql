use atif;
select * from student;

select * 
from student
order by adress asc
limit 3
;

select 
distinct adress 
from student
order by adress asc
limit 4
;

select 
distinct adress 
from student
order by adress asc
limit 4,1
;

select 
distinct adress 
from student
order by adress asc
limit 4,2
;

-- alias
select city , avg(age) as avg_age
from student
group by city ;