USE atif;

SELECT name, LENGTH(name) AS char_count
FROM student;

SELECT name, UPPER(name) AS upper_case
FROM student;

SELECT name, LOWER(name) AS lower_case
FROM student;
