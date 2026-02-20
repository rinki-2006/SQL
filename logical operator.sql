SELECT * FROM employees;

-- use of logical AND
SELECT * FROM employees
WHERE age>=25 AND salary>=60000;

-- use of logiacl OR
SELECT * FROM employees
WHERE age>=30 OR salary>=60000;

-- use logical NOT
SELECT * FROM employees
WHERE NOT (dept_name = 'IT');


