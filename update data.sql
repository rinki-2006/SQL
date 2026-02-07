CREATE TABLE STUDENTMARKS2(
	serialno SERIAL,
	name VARCHAR(50),
	subject VARCHAR(50),
	marks float,
	performance VARCHAR(50)
);
SELECT*FROM STUDENTMARKS2;

INSERT INTO STUDENTMARKS2(Name, subject,marks, performance)
VALUES ('Rinki','science',99 ,'good'),
	('Riya','math',98, 'good'),
	('Ritika', 'english',97, 'good');

--update data the column which we update is set at last 
UPDATE STUDENTMARKS2
SET marks = 100
WHERE name = 'Rinki';

-- for order it according to serial number
SELECT *FROM STUDENTMARKS2 ORDER BY serialno ASC;

--order it according to alphabetical order
SELECT *FROM STUDENTMARKS2 ORDER BY name ASC;

-- update according to condition
UPDATE STUDENTMARKS2
SET performance = 'Excellent'
WHERE marks>97;

--one another example
UPDATE STUDENTMARKS2
SET subject = 'hindi', marks = 96
WHERE name = 'Ritika';

--
UPDATE STUDENTMARKS2
SET marks =marks+1
WHERE name LIKE '%a';

UPDATE STUDENTMARKS2
SET marks =marks+1
WHERE name LIKE 'Riy%'; 