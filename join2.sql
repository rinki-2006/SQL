SELECT*FROM emplyees_a;
SELECT*FROM products4;

-- outer join
SELECT e.employee_id, e.first_name, e.last_name, 
p.department_id, p.department_name
FROM emplyees_a e
FULL OUTER JOIN
products4 p
ON e.department_id = p.department_id;

--cross join
SELECT e.employee_id, e.first_name, e.last_name, 
p.department_id, p.department_name
FROM emplyees_a e
CROSS JOIN
products4 p;

-- self join
SELECT e.first_name AS Employee_name1,
e2.first_name AS Employee_name2

FROM emplyees_a e JOIN emplyees_a e2
ON e.department_id = e2.department_id AND e.employee_id!=e2.employee_id;