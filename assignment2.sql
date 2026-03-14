-- create a table students with colum  id, name, age, city 
CREATE TABLE student(
column_id SERIAL PRIMARY KEY,
name VARCHAR(50),
age INT,
city VARCHAR(50)
);

-- insert one record into the student table
INSERT INTO student(name, age, city)
VALUES('Riya', 19, 'Panipat');

--display all records from the student table
SELECT*FROM student;

--display only name and age of students
SELECT name, age FROM student;

-- insert other record
INSERT INTO student(name, age, city)
VALUES('Rinki', 17, 'delhi'),
('Siya', 34, 'chandigarh'),
('Ram' , 12, 'panipat'); 

-- show students whose age is greater than 18
SELECT*FROM student
WHERE age>18;

--update the city of student whose id = 1
UPDATE student
SET city = 'Mumbai'
WHERE column_id = 1;

-- delete a student whose id = 1
DELETE FROM student
WHERE column_id = 1;

-- Display student sorted by age
SELECT*FROM student ORDER BY age;  -- by default it show ASC
SELECT*FROM student ORDER BY age DESC;

--Count total number of student
SELECT COUNT(*) FROM student;

--Find the average age of student
SELECT  name, age, AVG(age) FROM student AS Average GROUP BY name, age;

--create another table
CREATE TABLE courses(
course_id SERIAL PRIMARY KEY,
course_name VARCHAR(50)
);

SELECT*FROM courses;

INSERT INTO courses(course_name)
VALUES('B.tech'),
('BBA'),
('BCA');

--perform inner join to displa student name and courses
SELECT student.name , courses.course_name
FROM student
INNER JOIN courses
ON student.column_id = courses.course_id;

-- display number of student in each city
SELECT name, city, COUNT(*)
FROM student GROUP BY city, name;

--display second highest age
SELECT MAX(age)
FROM student
WHERE age<(SELECT MAX(age) FROM student);

--Display student whose name start with 'R'
SELECT name FROM student
WHERE name lIKE 'R%';

-- display student whose city is delhi or mumbai
SELECT name, age FROM student 
WHERE city IN ('delhi','chandigarh');

SELECT name, age FROM student 
WHERE city = 'delhi' OR city = 'chandigarh';

--display unique city
SELECT DISTINCT city FROM student;

-- display max age
SELECT*FROM student
ORDER BY age DESC
LIMIT 1;

