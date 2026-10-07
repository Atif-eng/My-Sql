USE atif;
SELECT * FROM student;

SELECT city, AVG(age) AS avg_age
FROM student
WHERE city = 'Taunsa'
GROUP BY city;

SELECT city, AVG(age) AS avg_age
FROM student
WHERE city = 'Taunsa'
GROUP BY city
HAVING AVG(age) > 15.0;
