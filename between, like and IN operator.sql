SELECT*FROM employees;

-- retrieve employees whose salary is between 55000 and 60000- use between operators
SELECT first_name, salary
FROM employees
WHERE salary BETWEEN 55000 AND 60000;

-- retrieve employees whos name ends with h
SELECT first_name, last_name
FROM employees
WHERE first_name LIKE '%a';

-- retrieve employees who belong to either the finance or IT department
SELECT first_name, dept_name
FROM employees
WHERE dept_name IN('Finance', 'IT');

--


