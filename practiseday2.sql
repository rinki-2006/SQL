SELECT*FROM student;
-- display student whose age is between 10 1nd 20
SELECT* FROM student
WHERE age BETWEEN 10 AND 20;

--display student who belong to both delhi and chandigarh
SELECT*FROM student
WHERE city IN('delhi', 'chandigarh');

--count total student
SELECT COUNT(*) FROM student;

--display average age
SELECT AVG(age) FROM student AS average_age;

--find max age
SELECT MAX(age) FROM student AS max_age;

--show name which start from R
SELECT *FROM student
WHERE name LIKE 'R%';

-- display top 2 student
SELECT*FROM student
LIMIT 2;

--display dinstict age
SELECT DISTINCT(age) FROM student;

-- disply student according to descending order
SELECT *FROM student ORDER BY city DESC;


