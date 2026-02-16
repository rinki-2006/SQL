CREATE TABLE STUDENTMARKS5(
	serialno SERIAL PRIMARY KEY,
	name VARCHAR(50),
	subject VARCHAR(50),
	marks float,
	performance VARCHAR(50)
);
SELECT*FROM STUDENTMARKS5;

INSERT INTO STUDENTMARKS5(Name, subject,marks, performance)
VALUES ('Rinki','science',99 ,'good'),
	('Riya','math',98, 'good'),
	('Ritika', 'english',97, 'good');



-- alter commmands to rename the column name
ALTER TABLE STUDENTMARKS5
RENAME COLUMN name TO username;

-- alter the data type of marks
ALTER TABLE STUDENTMARKS5
ALTER COLUMN marks TYPE NUMERIC(5,2); 

-- to add constraints NOT NULL in marks column
ALTER TABLE STUDENTMARKS5
ALTER COLUMN marks SET NOT NULL;

-- remove constraints
ALTER TABLE STUDENTMARKS5
ALTER COLUMN marks DROP NOT NULL;

ALTER TABLE STUDENTMARKS5
ADD CONSTRAINT marks CHECK(marks>=50);

INSERT INTO STUDENTMARKS5(username, subject,marks, performance)
VALUES ('Sneha','science',51,'poor');

-- alter table name
ALTER TABLE STUDENTMARKS5 
RENAME TO MARKSSTUDENT;

ALTER TABLE MARKSSTUDENT 
RENAME TO STUDENTMARKS5;

SELECT*FROM MARKSSTUDENT
