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