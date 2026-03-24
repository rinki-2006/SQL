-- show first_name, last_name, gender whose gender is M
SELECT first_name, last_name, gender
FROM patients
WHERE gender = 'M';

-- show the first_name, last_name in which allergies is none
SELECT first_name, last_name
FROM patients
WHERE allergies = 'None';

--show first_name of patients that start with the letter R
SELECT first_name
FROM patients
WHERE first_name LIKE'R%';

--show first_name , last_name of patients that weight within the range of 50 to 70
SELECT first_name, last_name , weight
FROM patients
WHERE weight >= 50 AND weight <= 70;

--update the patients table for the allergies column, if the patients allergies is null then replace it with 'NKA'
UPDATE patients
SET allergies = 'NKA'
WHERE allergies = 'None';

-- show first_name , last_name concatenated to one column to show their full_name
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM patients;

-- show first_name, last_name, the full province_name of each patient
SELECT first_name, last_name, province_name
FROM patients
JOIN
province_names
ON province_names.province_id  = patients.province_id;

--show how many patients have a birth_date with 2010 as the birth_year
SELECT COUNT(*)
FROM patients
WHERE EXTRACT(YEAR FROM birth_date) = 2010;

--show the first_name, last_name and height of patient with the greatest height
SELECT first_name, last_name, height
FROM patients 
WHERE height = (SELECT MAX(height) FROM patients);

--show all column who have one of following id - 1, 3 , 44 ,5
SELECT * FROM patients
WHERE patient_id IN (1,3,4,44,5);

--SELECT the total number of admission
SELECT COUNT(*) FROM admissions;

-- show all the column from the admission whre the patient was admitted and discharge on same day
SELECT*FROM admissions
WHERE admission_date = discharge_date;

-- show the patient_id and the total number of admission for patient _id 56
SELECT patient_id, COUNT(*) AS total_admission
FROM admissions
WHERE patient_id = 56
GROUP BY patient_id;  -- agreegate + normal columnn = GROUP BY must

-- show the first_name, last_name and birth date of patients who has height greater than 160 and weight greater than 70
SELECT first_name, last_name , birth_date
FROM patients
WHERE height>160 AND weight>70;

--show first_name, last _name and allergies where allergies are not null and are from the city of Mumbai
SELECT first_name, last_name , allergies
FROM patients
WHERE allergies IS NOT null AND city = 'Mumbai';

-- based on the cities that our patient live in, show unique cities that are in province_id 'NS'
SELECT DISTINCT(city)
FROM patients
WHERE province_id = 'NS';
SELECT*FROM patients;

