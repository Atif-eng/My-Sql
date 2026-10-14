-- Window functions examples for MySQL 8+
-- File: 08-window-functions/window_functions.sql

-- Sample table: employees and salaries
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  dept VARCHAR(50),
  name VARCHAR(100),
  salary DECIMAL(10,2),
  hire_date DATE
);

INSERT INTO employees (emp_id, dept, name, salary, hire_date) VALUES
(1, 'Sales', 'Ayesha', 60000, '2018-03-12'),
(2, 'Sales', 'Bilal', 62000, '2019-07-01'),
(3, 'Sales', 'Cyrus', 58000, '2020-09-20'),
(4, 'Engineering', 'Dina', 90000, '2017-01-10'),
(5, 'Engineering', 'Ehsan', 95000, '2018-11-30'),
(6, 'Engineering', 'Farah', 90000, '2019-06-04'),
(7, 'HR', 'Ghazanfar', 50000, '2020-02-17'),
(8, 'HR', 'Hina', 52000, '2021-05-25'),
(9, 'Sales', 'Imran', 62000, '2021-08-15'),
(10, 'Engineering', 'Jamal', 88000, '2022-04-03');

-- 1) ROW_NUMBER(): unique sequential number per partition (order deterministic only with ORDER BY)
SELECT
  emp_id, dept, name, salary,
  ROW_NUMBER() OVER (PARTITION BY dept ORDER BY salary DESC, emp_id) AS dept_row_num
FROM employees
ORDER BY dept, dept_row_num;

-- 2) RANK() and DENSE_RANK(): handle ties differently
SELECT
  emp_id, dept, name, salary,
  RANK() OVER (PARTITION BY dept ORDER BY salary DESC) AS dept_rank,
  DENSE_RANK() OVER (PARTITION BY dept ORDER BY salary DESC) AS dept_dense_rank
FROM employees
ORDER BY dept, dept_rank;

-- 3) NTILE(n): divide partition into n approximately equal buckets
SELECT
  emp_id, dept, name, salary,
  NTILE(3) OVER (PARTITION BY dept ORDER BY salary DESC) AS salary_tertile
FROM employees
ORDER BY dept, salary_tertile, salary DESC;

-- 4) LAG() and LEAD(): access previous/next row values
SELECT
  emp_id, dept, name, salary, hire_date,
  LAG(salary) OVER (PARTITION BY dept ORDER BY hire_date) AS prev_salary,
  LEAD(salary) OVER (PARTITION BY dept ORDER BY hire_date) AS next_salary
FROM employees
ORDER BY dept, hire_date;

-- 5) Running totals and moving averages using window frames
-- Running total by department ordered by hire_date
SELECT
  emp_id, dept, name, salary, hire_date,
  SUM(salary) OVER (PARTITION BY dept ORDER BY hire_date
                     ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total_dept
FROM employees
ORDER BY dept, hire_date;

-- 3-row moving average of salary in each department (current row +/- 1)
SELECT
  emp_id, dept, name, salary, hire_date,
  AVG(salary) OVER (PARTITION BY dept ORDER BY hire_date
                    ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS moving_avg_3
FROM employees
ORDER BY dept, hire_date;

-- 6) FIRST_VALUE() and LAST_VALUE()
SELECT
  emp_id, dept, name, salary, hire_date,
  FIRST_VALUE(name) OVER (PARTITION BY dept ORDER BY hire_date) AS first_hire_in_dept,
  LAST_VALUE(name) OVER (PARTITION BY dept ORDER BY hire_date
                         ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_hire_in_dept
FROM employees
ORDER BY dept, hire_date;

-- 7) Percent rank and relative position
SELECT
  emp_id, dept, name, salary,
  PERCENT_RANK() OVER (PARTITION BY dept ORDER BY salary) AS pct_rank,
  CUME_DIST() OVER (PARTITION BY dept ORDER BY salary) AS cum_dist
FROM employees
ORDER BY dept, salary;

-- 8) Practical example: find top 2 earners per department
WITH ranked AS (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY dept ORDER BY salary DESC) AS rn
  FROM employees
)
SELECT emp_id, dept, name, salary FROM ranked WHERE rn <= 2 ORDER BY dept, salary DESC;

-- 9) Practical example: salary change compared to previous hire in same dept
SELECT
  emp_id, dept, name, salary, hire_date,
  salary - LAG(salary) OVER (PARTITION BY dept ORDER BY hire_date) AS diff_from_prev_hire
FROM employees
ORDER BY dept, hire_date;

-- Cleanup comment: keep table if you want to experiment; otherwise drop it later
-- DROP TABLE employees;
