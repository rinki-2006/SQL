CREATE TABLE date(
date SERIAL PRIMARY KEY,
added_date DATE
);
SELECT*FROM date;

INSERT INTO date(added_date)
VALUES('2024-01-15'),
('2024-02-26'),
('2024-03-05'),
('2024-04-15');
--now() - get current date and time
SELECT NOW() AS current_date_time;

-- current_date() - get current date
SELECT CURRENT_DATE AS today_date;
SELECT added_date , CURRENT_DATE , (CURRENT_DATE - added_date ) AS diff
FROM date;



--EXTRACT() - Extract part of a date
SELECT EXTRACT(YEAR FROM added_date) AS year_added
FROM date;

SELECT EXTRACT(MONTH FROM added_date) AS month_added
FROM date;

SELECT EXTRACT(DAY FROM added_date) AS day_added
FROM date;

--age() - calculate age between dates
--calculate the time diference between added_date and today date
SELECT added_date,AGE(CURRENT_DATE , added_date) AS age_since_added
FROM date;

-- to char() - format date as string
SELECT added_date,TO_CHAR(added_date, 'DD-MON-YYYY') AS format
FROM date;

SELECT added_date,TO_CHAR(added_date, 'DD-MM-YYYY') AS format
FROM date;

SELECT added_date,TO_CHAR(added_date, 'DD-MONTH-YYYY') AS format
FROM date;

SELECT added_date,TO_CHAR(added_date, 'DD-MON-YY') AS format
FROM date;

--datepart() - get specific date part
SELECT added_date , DATE_PART('dow', added_date) AS day_of_week  -- sunday is 0
FROM date;  -- we also write isodow
SELECT added_date , DATE_PART('year', added_date) AS year  
FROM date;
SELECT added_date , DATE_PART('month', added_date) AS month  
FROM date;
SELECT added_date , DATE_PART('week', added_date) AS week  
FROM date;   -- weak number(1-53) in a year
SELECT added_date , DATE_PART('day', added_date) AS date  
FROM date;

--date_trunc() find start date
SELECT added_date, DATE_TRUNC('month', added_date) AS Month_start
FROM date;
SELECT added_date, DATE_TRUNC('week', added_date) AS week_start_date
FROM date;
SELECT added_date, DATE_TRUNC('isodow', added_date) AS Month_st
FROM date;