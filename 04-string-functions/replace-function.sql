USE atif;

SELECT name, REPLACE(name, 'A', 'Aa') AS replaced_name
FROM student;

SELECT name, LOCATE('A', name) AS position_of_a
FROM student;
