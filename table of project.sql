CREATE TABLE patients(
patient_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
gender CHAR(1),
birth_date DATE,
city VARCHAR(50),
province_id CHAR(2),
allergies VARCHAR(50),
height DECIMAL(3,0),
weight DECIMAL(4,0)
);

INSERT INTO patients (first_name, last_name, gender, birth_date, city, province_id, allergies, height, weight) VALUES
('Amit', 'Sharma', 'M', '1998-05-12', 'Delhi', 'DL', 'None', 170, 70),
('Riya', 'Verma', 'F', '2001-08-22', 'Mumbai', 'MH', 'Peanuts', 160, 55),
('Rahul', 'Singh', 'M', '1995-02-10', 'Lucknow', 'UP', 'Dust', 175, 72),
('Neha', 'Gupta', 'F', '1999-11-30', 'Jaipur', 'RJ', 'None', 158, 50),
('Karan', 'Mehta', 'M', '1997-07-19', 'Chandigarh', 'CH', 'Pollen', 180, 80),
('Pooja', 'Kapoor', 'F', '2000-03-15', 'Amritsar', 'PB', 'Milk', 162, 58),
('Arjun', 'Reddy', 'M', '1996-09-25', 'Hyderabad', 'TG', 'None', 178, 75),
('Sneha', 'Iyer', 'F', '2002-12-05', 'Chennai', 'TN', 'Seafood', 155, 48),
('Vikas', 'Yadav', 'M', '1994-06-18', 'Patna', 'BR', 'Dust', 172, 68),
('Anjali', 'Saxena', 'F', '1998-01-28', 'Bhopal', 'MP', 'None', 165, 60),
('Rohit', 'Malhotra', 'M', '1993-04-14', 'Delhi', 'DL', 'None', 177, 74),
('Simran', 'Kaur', 'F', '2001-10-09', 'Ludhiana', 'PB', 'Pollen', 159, 52),
('Deepak', 'Joshi', 'M', '1997-03-03', 'Dehradun', 'UK', 'None', 173, 69),
('Meera', 'Nair', 'F', '1999-07-21', 'Kochi', 'KL', 'Dust', 157, 54),
('Sahil', 'Khan', 'M', '1995-12-11', 'Bangalore', 'KA', 'None', 181, 82),
('Priya', 'Mishra', 'F', '2000-05-06', 'Varanasi', 'UP', 'Peanuts', 163, 57),
('Nikhil', 'Patel', 'M', '1996-08-17', 'Ahmedabad', 'GJ', 'None', 176, 73),
('Kavya', 'Shetty', 'F', '2002-02-23', 'Mangalore', 'KA', 'Milk', 156, 49),
('Manoj', 'Das', 'M', '1994-11-02', 'Kolkata', 'WB', 'Dust', 174, 71),
('Tina', 'Roy', 'F', '1998-09-13', 'Kolkata', 'WB', 'None', 161, 56);

SELECT*FROM patients;

CREATE TABLE doctors(
doctor_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
speciality VARCHAR(50)
);

INSERT INTO doctors (first_name, last_name, speciality) VALUES
('Rakesh', 'Sharma', 'Cardiologist'),
('Neha', 'Verma', 'Dermatologist'),
('Amit', 'Singh', 'Orthopedic'),
('Pooja', 'Gupta', 'Pediatrician'),
('Rahul', 'Mehta', 'Neurologist'),
('Sneha', 'Kapoor', 'Gynecologist'),
('Vikas', 'Yadav', 'General Physician'),
('Anjali', 'Saxena', 'Dentist'),
('Karan', 'Malhotra', 'ENT Specialist'),
('Priya', 'Mishra', 'Ophthalmologist'),
('Arjun', 'Reddy', 'Cardiologist'),
('Simran', 'Kaur', 'Dermatologist'),
('Deepak', 'Joshi', 'Orthopedic'),
('Meera', 'Nair', 'Pediatrician'),
('Sahil', 'Khan', 'Neurologist'),
('Tina', 'Roy', 'Dentist'),
('Nikhil', 'Patel', 'General Physician'),
('Kavya', 'Shetty', 'Gynecologist'),
('Manoj', 'Das', 'ENT Specialist'),
('Riya', 'Iyer', 'Ophthalmologist');

SELECT*FROM doctors;


CREATE TABLE admissions(
patient_id INTEGER,
admission_date DATE,
discharge_date DATE,
diagnosis VARCHAR(50),
attending_doctor_id INT
);

INSERT INTO admissions (patient_id, admission_date, discharge_date, diagnosis, attending_doctor_id) VALUES
(1, '2023-01-10', '2023-01-15', 'Fever', 1),
(2, '2023-02-05', '2023-02-10', 'Skin Allergy', 2),
(3, '2023-03-12', '2023-03-18', 'Fracture', 3),
(4, '2023-04-20', '2023-04-25', 'Child Infection', 4),
(5, '2023-05-01', '2023-05-07', 'Migraine', 5),
(6, '2023-06-14', '2023-06-20', 'Pregnancy Checkup', 6),
(7, '2023-07-08', '2023-07-12', 'General Weakness', 7),
(8, '2023-08-03', '2023-08-06', 'Tooth Pain', 8),
(9, '2023-09-11', '2023-09-15', 'Ear Infection', 9),
(10, '2023-10-22', '2023-10-28', 'Eye Problem', 10),
(11, '2023-11-05', '2023-11-10', 'Heart Issue', 11),
(12, '2023-12-01', '2023-12-05', 'Skin Rash', 12),
(13, '2024-01-09', '2024-01-14', 'Bone Pain', 13),
(14, '2024-02-18', '2024-02-22', 'Flu', 14),
(15, '2024-03-25', '2024-03-30', 'Headache', 15),
(16, '2024-04-02', '2024-04-06', 'Dental Issue', 16),
(17, '2024-05-11', '2024-05-16', 'Cold', 17),
(18, '2024-06-19', '2024-06-24', 'Pregnancy', 18),
(19, '2024-07-07', '2024-07-10', 'Throat Infection', 19),
(20, '2024-08-15', '2024-08-20', 'Eye Checkup', 20);

SELECT*FROM admissions;

CREATE TABLE province_names(
province_id CHAR(2),
province_name VARCHAR(30)
);

INSERT INTO province_names (province_id, province_name) VALUES
('DL', 'Delhi'),
('MH', 'Maharashtra'),
('UP', 'Uttar Pradesh'),
('RJ', 'Rajasthan'),
('PB', 'Punjab'),
('HR', 'Haryana'),
('BR', 'Bihar'),
('MP', 'Madhya Pradesh'),
('GJ', 'Gujarat'),
('KA', 'Karnataka'),
('TN', 'Tamil Nadu'),
('WB', 'West Bengal'),
('KL', 'Kerala'),
('TG', 'Telangana'),
('UK', 'Uttarakhand'),
('CH', 'Chandigarh');

SELECT*FROM province_names;