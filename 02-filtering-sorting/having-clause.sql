USE atif;

SELECT city, AVG(age) AS avg_age
FROM student
GROUP BY city
HAVING AVG(age) > 18;
