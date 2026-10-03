use atif;

select name , length(name) as char_count
from student;

select name , length(name) as char_count
from student
order by 2;

select name , upper(name) as upper_case
from student;
-- select upper(name) as upper_case from student;

select name , lower(name) as lower_case
from student;
-- select lower(name) as lower_case from student;

select trim("         remove extra spaces   ");

select rtrim("   right space remove       i.");

select ltrim("   right space remove        .");

select name , left(name,2)  -- choose only first 2 character
from student;

select name , right(name,2)  -- choose only last 2 character
from student;

select name , substring(name,2,2) 
from student;

select name , 
left(name,2),
substring(name,2,2),
right(name,2)
from student;

select name , 
left(name,2),
substring(name,2,2),
right(name,2),
age
from student;

select name , replace(name,"A","Aa")
from student;

select name , locate("A",name)
from student;

select *,
concat(province," , ",country) as location
from student;

select adress,name,age,
concat(student.city," , ",student.province," , ",student.country) as location
from student;
