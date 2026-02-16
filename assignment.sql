DROP TABLE IF EXISTS employees;
CREATE TABLE employees(
empl_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
department VARCHAR(50),
salary DECIMAL(10,2) CHECK(salary>0),
joining_date DATE NOT NULL,
age INT CHECK(age>=18)
)
SELECT*FROM employees;

INSERT INTO employees(first_name, last_name, department, salary, joining_date, age)
VALUES('Ansh', 'sharma', 'IT',60000.00,'2022-05-01',29),
('Neha','Patel', 'HR', 55000.00,'2021-02-15', 28),
('Ravi', 'kumar', 'Finance', 56000.00, '2020-09-12',34),
('Anjali', 'Verma','IT', 62000.00, '2021-03-12',43),
('Suresh', 'Reddy','Operatoions',67000.00,'2023-08-15',23);

-- retrive all employees first_name and their departments

SELECT first_name, department from employees;

-- update the salary of all employees in the 'IT'department by increasing it by 10%
UPDATE employees
SET salary = salary + (salary * 0.1)
WHERE department = 'IT';

SELECT*FROM employees ORDER BY empl_id ASC;

--delete all employees who are older than 34 years
DELETE FROM employees
WHERE age>34;

-- rename department column to dept_name
ALTER TABLE employees
RENAME COLUMN department TO dept_name;

-- add a new column email to the employee table
ALTER TABLE employees
ADD COLUMN email VARCHAR(50);  

--retrieve the name of employees who joined after january1, 2021
SELECT first_name, last_name, joining_date FROM employees
WHERE joining_date > '2021-01-01';

--change the data type of the salary column to integer
ALTER TABLE employees
ALTER COLUMN salary TYPE INT;

--list all employees with their age and salary in descending order of salary
SELECT first_name,age, salary FROM employees ORDER BY salary DESC;

--insert a new employee with 
INSERT INTO employees(first_name, last_name, dept_name, salary, joining_date, age)
VALUES('Raj','Singh','Marketing', 60000, '2023-09-12', 30);

--update age of employee +1 to every employee
UPDATE employees
set age = age +1;