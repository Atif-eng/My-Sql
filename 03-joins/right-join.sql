USE atif;

SELECT * FROM student
RIGHT JOIN stu_dept
    ON student.adress = stu_dept.adress;
