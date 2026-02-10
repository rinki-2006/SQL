CREATE TABLE STUDENTMARKS3(
	serialno SERIAL PRIMARY KEY,
	name VARCHAR(50),
	subject VARCHAR(50),
	marks float,
	performance VARCHAR(50)
);
SELECT*FROM STUDENTMARKS3;

INSERT INTO STUDENTMARKS3(Name, subject,marks, performance)
VALUES ('Rinki','science',99 ,'good'),
	('Riya','math',98, 'good'),
	('Ritika', 'english',97, 'good');

--update data the column which we update is set at last 
UPDATE STUDENTMARKS3
SET marks = 100
WHERE name = 'Rinki';

-- for order it according to serial number
SELECT *FROM STUDENTMARKS3 ORDER BY serialno ASC;

--order it according to alphabetical order
SELECT *FROM STUDENTMARKS3 ORDER BY name ASC;

DROP TABLE STUDENTMARKS2;

-- update according to condition
UPDATE STUDENTMARKS3
SET performance = 'Excellent'
WHERE marks>97;

--one another example
UPDATE STUDENTMARKS3
SET subject = 'hindi', marks = 96
WHERE name = 'Ritika';

--
UPDATE STUDENTMARKS3
SET marks =marks+1
WHERE name LIKE '%a';

UPDATE STUDENTMARKS3
SET marks =marks+1
WHERE name LIKE 'Riy%'; 