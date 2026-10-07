USE atif;
SELECT * FROM student ORDER BY adress ASC LIMIT 3;
SELECT DISTINCT adress FROM student ORDER BY adress ASC LIMIT 4;
SELECT DISTINCT adress FROM student ORDER BY adress ASC LIMIT 4, 1;
SELECT DISTINCT adress FROM student ORDER BY adress ASC LIMIT 4, 2;

SELECT city, AVG(age) AS avg_age
FROM student
GROUP BY city;
