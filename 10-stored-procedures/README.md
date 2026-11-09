# Stored Procedures

This section introduces MySQL stored procedures: named routines stored in the database that can accept parameters and run one or more SQL statements.

## File

- `stored_procedures.sql` — examples of creating and calling procedures with no parameters, `IN` parameters, and an `OUT` parameter.

## Suggested order

1. Run the `USE atif;` statement and ensure the `student` and `stu_dept` tables exist.
2. Create and call `GetAllStudents`.
3. Try `GetStudentsByMinimumAge` with different age values.
4. Call `GetAverageSalaryByProvince` and inspect the output variable.

## Requirements

These examples expect the existing `atif` database, with `student` columns `name`, `age`, and `adress`, and `stu_dept` columns `adress`, `province`, and `salary`. They use MySQL stored procedure syntax and `DELIMITER` commands, which are supported by MySQL clients such as the MySQL command-line client and Workbench.

The script drops procedures with these example names before recreating them, so rerunning it replaces those routines.
