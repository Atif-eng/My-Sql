use atif;
select * from student;

select city , avg(age)
from student
where city = "Taunsa"
group by city
;

select city , avg(age)
from student
where city = "Taunsa"
group by city
having avg(age)>15.000
;