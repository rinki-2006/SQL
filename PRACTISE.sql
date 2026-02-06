CREATE TABLE studentrecord(
	serialno SERIAL, 
	name VARCHAR(100) NOT NULL,
	marks INT,
	class INT,
	age INT
);

SELECT * FROM studentrecord;

INSERT INTO studentrecord(Name2, marks, class, age)
VALUES('Rinki', 99, 12, 19),
	('Khushi', 100, 11, 20),
	('kajal', 98, 10, 18),
	('Riya', 96, 11, 16);

ALTER TABLE studentrecord
RENAME COLUMN name TO Name2;

TRUNCATE TABLE studentrecord;
TRUNCATE TABLE studentrecord RESTART IDENTITY;

