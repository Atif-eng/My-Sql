USE atif;

-- Remove the examples first so this script can be rerun.
DROP PROCEDURE IF EXISTS GetAllStudents;
DROP PROCEDURE IF EXISTS GetStudentsByMinimumAge;
DROP PROCEDURE IF EXISTS GetAverageSalaryByProvince;

DELIMITER //

-- 1) A procedure with no parameters.
CREATE PROCEDURE GetAllStudents()
BEGIN
    SELECT *
    FROM student;
END //

-- 2) An IN parameter filters students by minimum age.
CREATE PROCEDURE GetStudentsByMinimumAge(IN min_age INT)
BEGIN
    SELECT name, age, adress
    FROM student
    WHERE age >= min_age
    ORDER BY age, name;
END //

-- 3) An OUT parameter returns the average salary for a province.
CREATE PROCEDURE GetAverageSalaryByProvince(
    IN input_province VARCHAR(100),
    OUT average_salary DECIMAL(10, 2)
)
BEGIN
    SELECT AVG(sd.salary)
    INTO average_salary
    FROM student AS stu
    JOIN stu_dept AS sd
        ON stu.adress = sd.adress
    WHERE sd.province = input_province;
END //

DELIMITER ;

-- Call the procedure with no parameters.
CALL GetAllStudents();

-- Call the procedure using an IN parameter.
CALL GetStudentsByMinimumAge(25);

-- Call the procedure using an OUT parameter.
SET @average_salary = NULL;
CALL GetAverageSalaryByProvince('Punjab', @average_salary);
SELECT @average_salary AS average_salary_in_punjab;
