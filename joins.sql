show databases;
use atif;
show tables;

select * from student;
select * from stu_dept;

-- inner join

select * from student
inner join stu_dept
	on student.adress=stu_dept.adress
;

select student.adress,student.name,student.age,stu_dept.dept,stu_dept.salary 
from student
inner join stu_dept
	on student.adress=stu_dept.adress
;

-- outer join(left,right)

select * from student
left join stu_dept
	on student.adress=stu_dept.adress
;
		-- left join ma jo bhi left side pr hy woh same as it is 
		-- likn right side vala ager match nai kr raha osy handle kry ga

select * from student
right join stu_dept
	on student.adress=stu_dept.adress
;
		-- right join ma jo bhi right side pr hy woh same as it is 
		-- likn left side vala ager match nai kr raha osy handle kry ga
        
select * 
from student emp1
join student emp2
	on emp1.adress+1=emp2.adress
;