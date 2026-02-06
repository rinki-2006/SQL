CREATE TABLE employee2(
	emp_id INT PRIMARY KEY,
	name VARCHAR(100),
	position VARCHAR(50),
	hire_date DATE,
	salary NUMERIC(10,2),
	department VARCHAR(50)
);
SELECT * FROM employee2;

INSERT INTO employee2(emp_id, name, position, hire_date, salary, department)
VALUES(102, 'Rahul', 'Data analyst', '2026-02-12', 65000.00, 'Data science'),
		(103, 'Riya', 'HR', '2026-02-12', 65000.00, 'Marketing'),
		(104, 'Rinki', 'Sales', '2026-02-12', 65000.00, 'Manager');

DELETE FROM employee2
WHERE name = 'Riya';

ALTER TABLE employee2
DROP COLUMN position;

DROP TABLE employee2;

	