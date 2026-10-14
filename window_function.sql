use atif;

select * from student;

select province ,avg(salary)
from student stu
join stu_dept sd
	on stu.adress=sd.adress
group by province;


select name,province ,avg(salary) over(partition by province)
from student stu
join stu_dept sd
	on stu.adress=sd.adress;
    
    
select name,province,salary,
sum(salary) over(partition by province order by stu.adress) as total_salary
from student stu
join stu_dept sd
	on stu.adress=sd.adress;
    
    
select sd.adress,name,province,salary,
row_number() over(partition by province order by salary desc) as row_num,
rank() over(partition by province order by salary desc) as rank_num,
dense_rank() over(partition by province order by salary desc) as dense_rank_num
from student stu
join stu_dept sd
	on stu.adress=sd.adress;