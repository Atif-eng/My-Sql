USE atif;
SELECT DISTINCT adress, name, city, age,
    CASE
        WHEN age >= 25 AND age < 40 THEN 'adult'
        WHEN age <= 18 THEN 'child'
        WHEN age >= 40 THEN 'old'
        WHEN age > 18 AND age < 25 THEN 'young'
    END AS new_col,
    CASE
        WHEN adress = 1001 THEN 55000
        WHEN adress = 1002 THEN 50000
        WHEN adress = 1003 THEN 60000
        WHEN adress = 1004 THEN 55000
        WHEN adress = 1005 THEN 35000
        WHEN adress = 1006 THEN 54000
        WHEN adress = 1007 THEN 48000
        WHEN adress = 1008 THEN 45000
        WHEN adress = 1009 THEN 75000
    END AS new_salary
FROM student
ORDER BY adress;
