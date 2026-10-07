USE atif;

SELECT *, CONCAT(province, ' , ', country) AS location
FROM student;

SELECT adress, name, age,
       CONCAT(student.city, ' , ', student.province, ' , ', student.country) AS location
FROM student;
