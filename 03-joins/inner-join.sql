USE atif;

SELECT * FROM student
INNER JOIN stu_dept
    ON student.adress = stu_dept.adress;

SELECT student.adress, student.name, student.age, stu_dept.dept, stu_dept.salary
FROM student
INNER JOIN stu_dept
    ON student.adress = stu_dept.adress;
