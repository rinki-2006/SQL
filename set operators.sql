CREATE TABLE student_2023(
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
course VARCHAR(50)
);
SELECT*FROM student_2023;

INSERT INTO student_2023(student_id, student_name, course)
VALUES(1, 'rinki', 'computer science'),
(2, 'Ishita', 'Mechanical engineering'),
(3 , 'Kabir', 'Electronics'),
(4, 'Ananya', 'Civil engineering'),
(5, 'Rahul', 'Computer science');

CREATE TABLE student_2024(
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
course VARCHAR(50)
);

SELECT*FROM student_2024;

INSERT INTO student_2024(student_id, student_name, course)
VALUES(3 , 'Kabir', 'Electronics'),
(4, 'Ananya', 'Civil engineering'),
(5, 'Meera', 'Computer science'),
(6, 'Vikram', 'Math'),
(7, 'sanya', 'Physics');

--union - combine result, removes duplicates
SELECT student_name, course 
FROM student_2023
UNION
SELECT student_name, course
FROM student_2024;

--union all - combine result, keep duplicates
SELECT student_name, course 
FROM student_2023
UNION ALL
SELECT student_name, course
FROM student_2024;

-- intersect - return common result
SELECT student_name, course 
FROM student_2023
INTERSECT
SELECT student_name, course
FROM student_2024;

-- except - return results in first, not second
SELECT student_name, course 
FROM student_2023
EXCEPT
SELECT student_name, course
FROM student_2024;