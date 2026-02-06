SELECT * FROM employee;

INSERT INTO employee(emp_id, name1, position, hire_date, salary, department)
VALUES(102, 'Riya', 'Data Analyst', '2026-02-15',65000.00,'Data Science'),
	(103, 'siya', 'Sales Executive', '2026-02-15',65000.00,'Sales Manager'),
	(104, 'Ritik', 'HR Manager', '2026-02-15',65000.00,'HR'),
	(105, 'ram', 'Software Engineer', '2026-02-15',65000.00,'IT'),
	(106, 'khushi', 'Marketing Specialist', '2026-02-15',65000.00,'Marketing');

ALTER TABLE employee
RENAME COLUMN name TO Name1;

TRUNCATE TABLE employee;  