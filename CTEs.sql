use atif;
show tables;

select * from student;

with cte_student as 
(
select age, avg(salary),min(salary),max(salary)
from student stu
join stu_dept st_dp
	on stu.adress=st_dp.adress
group by age
)
select * 
from cte_student
;



select avg(avg_sal) from
(
select age, avg(salary) avg_sal,min(salary) min_sal,max(salary) max_sal
from student stu
join stu_dept st_dp
	on stu.adress=st_dp.adress
group by age
) ex_subquery
;



with cte_student as 
(
select adress,name,age
from student
where age>=25
),
cte_dept as
(
select * from stu_dept
where salary<50000
)
select * 
from cte_student
join cte_dept
	on cte_student.adress=cte_dept.adress
;
