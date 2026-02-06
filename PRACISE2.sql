CREATE DATABASE record;

CREATE TABLE STUDENTMARKS(
	serialno SERIAL,
	name VARCHAR(50),
	subject VARCHAR(50),
	marks float
);
SELECT*FROM STUDENTMARKS;

INSERT INTO STUDENTMARKS(Name, subject2,marks)
VALUES ('Rinki','science',99),
	('Riya','math',98),
	('Ritika', 'english',97);

--RENAME column
ALTER TABLE STUDENTMARKS
RENAME COLUMN subject TO subject2;

--remove data from table
TRUNCATE TABLE STUDENTMARKS;
TRUNCATE TABLE STUDENTMARKS RESTART IDENTITY;

--delete row 
DELETE FROM STUDENTMARKS
WHERE subject2 = 'science';

--delete column
ALTER TABLE STUDENTMARKS
DROP COLUMN name;

--delete whole table
DELETE TABLE STUDENTMARKS;

--delete database
DELETE DATABASE record;
