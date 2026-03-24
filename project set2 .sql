--show unique birth_date from patient and order them by ascending
SELECT DISTINCT(birth_date) AS unique_date
FROM patients
ORDER BY birth_date ASC;

--show unique first_name in the list of patients
SELECT DISTINCT(first_name)
FROM patients;