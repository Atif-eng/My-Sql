CREATE DATABASE IF NOT EXISTS learning_db;
USE learning_db;

CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO students (id, name, age, city)
VALUES
    (1, 'Ali', 20, 'Lahore'),
    (2, 'Ayesha', 22, 'Karachi'),
    (3, 'Hamza', 25, 'Islamabad');
