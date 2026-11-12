show databases;

use atif;

select * from stu_dept
where salary>=50000;

create procedure high_salary()
select * from stu_dept
where salary>=50000;

call high_salary();

delimiter $$
create procedure high_salary2()
begin
	select * from stu_dept
	where salary>=50000;
	select * from stu_dept
	where salary>=10000;
end $$
delimiter ;

call high_salary2;


delimiter $$
create procedure high_salary2()
begin
	select * from stu_dept
	where salary>=50000;
end $$
delimiter ;
