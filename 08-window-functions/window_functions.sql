
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

SELECT
  emp_id, dept, name, salary,
  ROW_NUMBER() OVER (PARTITION BY dept ORDER BY salary DESC, emp_id) AS dept_row_num
FROM employees
ORDER BY dept, dept_row_num;

SELECT
  emp_id, dept, name, salary,
  RANK() OVER (PARTITION BY dept ORDER BY salary DESC) AS dept_rank,
  DENSE_RANK() OVER (PARTITION BY dept ORDER BY salary DESC) AS dept_dense_rank
FROM employees
ORDER BY dept, dept_rank;

SELECT
  emp_id, dept, name, salary,
  NTILE(3) OVER (PARTITION BY dept ORDER BY salary DESC) AS salary_tertile
FROM employees
ORDER BY dept, salary_tertile, salary DESC;

SELECT
  emp_id, dept, name, salary, hire_date,
  LAG(salary) OVER (PARTITION BY dept ORDER BY hire_date) AS prev_salary,
  LEAD(salary) OVER (PARTITION BY dept ORDER BY hire_date) AS next_salary
FROM employees
ORDER BY dept, hire_date;

SELECT
  emp_id, dept, name, salary, hire_date,
  SUM(salary) OVER (PARTITION BY dept ORDER BY hire_date
                     ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total_dept
FROM employees
ORDER BY dept, hire_date;

SELECT
  emp_id, dept, name, salary, hire_date,
  AVG(salary) OVER (PARTITION BY dept ORDER BY hire_date
                    ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS moving_avg_3
FROM employees
ORDER BY dept, hire_date;

SELECT
  emp_id, dept, name, salary, hire_date,
  FIRST_VALUE(name) OVER (PARTITION BY dept ORDER BY hire_date) AS first_hire_in_dept,
  LAST_VALUE(name) OVER (PARTITION BY dept ORDER BY hire_date
                         ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_hire_in_dept
FROM employees
ORDER BY dept, hire_date;

SELECT
  emp_id, dept, name, salary,
  PERCENT_RANK() OVER (PARTITION BY dept ORDER BY salary) AS pct_rank,
  CUME_DIST() OVER (PARTITION BY dept ORDER BY salary) AS cum_dist
FROM employees
ORDER BY dept, salary;

WITH ranked AS (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY dept ORDER BY salary DESC) AS rn
  FROM employees
)
SELECT emp_id, dept, name, salary FROM ranked WHERE rn <= 2 ORDER BY dept, salary DESC;


SELECT
  emp_id, dept, name, salary, hire_date,
  salary - LAG(salary) OVER (PARTITION BY dept ORDER BY hire_date) AS diff_from_prev_hire
FROM employees
ORDER BY dept, hire_date;
