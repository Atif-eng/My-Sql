USE atif;

SELECT name, LEFT(name, 2) AS first_two_chars
FROM student;

SELECT name, RIGHT(name, 2) AS last_two_chars
FROM student;

SELECT name, SUBSTRING(name, 2, 2) AS partial_text
FROM student;
