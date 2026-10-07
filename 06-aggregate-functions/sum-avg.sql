USE atif;

SELECT province, AVG(age) AS avg_age, MAX(age) AS max_age, MIN(age) AS min_age, COUNT(city) AS city_count
FROM student
GROUP BY province;
