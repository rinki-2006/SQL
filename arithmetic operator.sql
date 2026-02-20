SELECT*FROM employees;

--retrieve first_name, salary and calculate 10% bonus on the salary
SELECT first_name, salary, 
(salary*0.10) As Bonus   -- multiplication 
FROM employees;

--calculate the Annual salary and Salary increment by 5% - show the monthly new salary as well
SELECT first_name, last_name, salary,
(salary*12) As Annual_Salary,
(salary * 0.05) AS Increment_Salary,
(salary + salary*0.05) As New_salary
from employees;



