CREATE DATABASE MasterSql;

USE MasterSql;

CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    department VARCHAR(20),
    salary INT
);

INSERT INTO employees (id, name, department, salary) VALUES
(1, 'Alice', 'HR', 55000),
(2, 'Bob', 'HR', 60000),
(3, 'Charlie', 'HR', 58000),
(4, 'Diana', 'HR', 62000),
(5, 'Edward', 'IT', 80000),
(6, 'Fiona', 'IT', 78000),
(7, 'George', 'IT', 82000),
(8, 'Hannah', 'IT', 76000),
(9, 'Ian', 'Sales', 50000),
(10, 'Julia', 'Sales', 52000),
(11, 'Kevin', 'Sales', 54000),
(12, 'Laura', 'Sales', 56000),
(13, 'Mark', 'Finance', 70000),
(14, 'Nina', 'Finance', 72000),
(15, 'Oliver', 'Finance', 69000),
(16, 'Paula', 'Finance', 71000),
(17, 'Quinn', 'HR', 59000),
(18, 'Rita', 'IT', 83000),
(19, 'Sam', 'Sales', 53000),
(20, 'Tina', 'Finance', 73000);


SELECT * FROM employees;
SELECT department, AVG(salary) AS total_department
FROM employees
GROUP BY department;

SELECT name, department, 
AVG(salary) OVER (PARTITION BY department) as total_department 
FROM employees
WHERE department='HR';