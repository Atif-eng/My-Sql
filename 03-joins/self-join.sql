USE atif;

SELECT *
FROM student emp1
JOIN student emp2
    ON emp1.adress + 1 = emp2.adress;
