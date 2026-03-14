CREATE TABLE emplyees_a(
employee_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
department_id INT
);
INSERT INTO emplyees_a(first_name, last_name, department_id)
VALUES('Rahul', 'Sharma', 101),
('Priya', 'Mehta', 102),
('Ankit','Verma', 103),
('Simran', 'Kaur',NULL),
('Aman', 'Singh', 101);

SELECT*FROM emplyees_a;

CREATE TABLE products4(
department_id INT,
department_name VARCHAR(50)
);

INSERT INTO products4(department_id, department_name)
VALUES(101, 'Sales'),
(102,'Marketing'),
(103, 'IT'),
(104, 'HR');

SELECT*FROM products4;

--inner join
--e means employees_a
--p means products4
SELECT e.employee_id, e.first_name, e.last_name,
p.department_id, p.department_name
FROM emplyees_a e
INNER JOIN
products4 p
ON e.department_id = p.department_id;  -- tell the column which column is common 

--left join
SELECT e.employee_id, e.first_name, e.last_name,
p.department_id, p.department_name
FROM emplyees_a e
LEFT JOIN
products4 p
ON e.department_id = p.department_id;

--right join
SELECT e.employee_id, e.first_name, e.last_name,
p.department_id, p.department_name
FROM emplyees_a e
RIGHT JOIN
products4 p
ON e.department_id = p.department_id;