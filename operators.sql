SELECT*FROM employees;

-- retrieve employees where the email column is null
SELECT first_name, last_name, email
FROM employees
WHERE email IS NULL;

-- list employees sorted by salary in DESCENDING order
SELECT first_name, salary
FROM employees
ORDER BY salary DESC;

-- retrieve two top most highset salary paid employees
SELECT first_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 2;

-- retrieve a list of unique department
SELECT DISTINCT dept_name
FROM employees;

SELECT COUNT(DISTINCT dept_name) 
FROM employees;


SELECT COUNT(DISTINCT dept_name) AS dep_count
FROM employees;

