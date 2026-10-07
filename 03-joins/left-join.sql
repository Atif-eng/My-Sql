USE atif;

SELECT * FROM student
LEFT JOIN stu_dept
    ON student.adress = stu_dept.adress;
