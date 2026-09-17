#hospital management system 

CREATE DATABASE hospital_management;

USE hospital_management;

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    dob DATE,
    gender VARCHAR(20),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(255),
    registration_date DATE
);

DESC Patients;

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    available_days VARCHAR(100),
    consultation_fee DECIMAL(10,2),
    registration_date DATE,
    experience_years INT
);

DESC Doctors;

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATETIME,
    status VARCHAR(20),

    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

DESC Appointments;


CREATE TABLE Medical_Records (
    record_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    diagnosis VARCHAR(255),
    prescription TEXT,
    treatment_date DATE,

    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);


DESC Medical_Records;


CREATE TABLE Billing (
    invoice_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    appointment_id INT NOT NULL,
    amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    payment_date DATE,

    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

DESC Billing;


CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL
);

DESC Departments;

CREATE TABLE Doctor_Department (
    doctor_id INT NOT NULL,
    department_id INT NOT NULL,

    PRIMARY KEY (doctor_id, department_id),

    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

DESC Doctor_Department;


INSERT INTO Patients
(name, dob, gender, phone_number, email, address, registration_date)
VALUES
('Aarav Sharma', '1998-05-12', 'Male', '9876543210',
 'aarav@gmail.com', 'Surat', '2025-01-10'),

('Priya Patel', '2000-08-20', 'Female', '9876543211',
 'priya@gmail.com', 'Ahmedabad', '2025-02-15'),

('Rahul Mehta', '1995-03-18', 'Male', '9876543212',
 'rahul@gmail.com', 'Vadodara', '2025-04-05'),

('Neha Shah', '1999-11-25', 'Female', '9876543213',
 'neha@gmail.com', 'Surat', '2025-06-12'),

('Vivek Desai', '1988-07-30', 'Male', '9876543214',
 'vivek@gmail.com', 'Mumbai', '2025-08-20'),

('Anjali Joshi', '1997-01-14', 'Female', '9876543215',
 'anjali@gmail.com', 'Rajkot', '2025-09-10'),

('Karan Verma', '1992-12-05', 'Male', '9876543216',
 'karan@gmail.com', 'Surat', '2025-10-18'),

('Riya Kapoor', '2001-04-22', 'Female', '9876543217',
 'riya@gmail.com', 'Delhi', '2025-11-05'),

('Mohit Singh', '1990-09-16', 'Male', '9876543218',
 'mohit@gmail.com', 'Jaipur', '2026-01-12'),

('Simran Kaur', '1996-06-28', 'Female', '9876543219',
 'simran@gmail.com', 'Chandigarh', '2026-02-20');
 
 select * from patients
 
 
 INSERT INTO Doctors
(name, specialization, phone_number, email, available_days,
 consultation_fee, registration_date, experience_years)
VALUES
('Dr. Amit Patel', 'Cardiology', '9876500001', 'amit@hospital.com',
 'Monday, Wednesday, Friday', 1500.00, '2008-06-15', 18),

('Dr. Neha Shah', 'Neurology', '9876500002', 'neha@hospital.com',
 'Tuesday, Thursday, Saturday', 1800.00, '2014-03-20', 12),

('Dr. Raj Mehta', 'Dermatology', '9876500003', 'raj@hospital.com',
 'Monday, Tuesday, Friday', 1200.00, '2021-07-10', 5),

('Dr. Priya Desai', 'Orthopedics', '9876500004', 'priya@hospital.com',
 'Wednesday, Thursday, Saturday', 1000.00, '2016-01-12', 10),

('Dr. Karan Shah', 'Pediatrics', '9876500005', 'karan@hospital.com',
 'Monday, Wednesday, Saturday', 800.00, '2023-09-05', 3),

('Dr. Riya Joshi', 'Cardiology', '9876500006', 'riya@hospital.com',
 'Tuesday, Thursday, Friday', 1600.00, '2009-11-18', 16),

('Dr. Mohit Verma', 'Neurology', '9876500007', 'mohit@hospital.com',
 'Monday, Thursday, Saturday', 2000.00, '2005-04-25', 21),

('Dr. Anjali Singh', 'Dermatology', '9876500008', 'anjali@hospital.com',
 'Tuesday, Wednesday, Friday', 1100.00, '2018-08-14', 8);
 
 SELECT *FROM Doctors
 
 INSERT INTO Appointments
(patient_id, doctor_id, appointment_date, status)
VALUES
(1, 1, '2025-01-15 10:00:00', 'Completed'),
(2, 2, '2025-02-20 11:00:00', 'Completed'),
(3, 3, '2025-04-10 09:30:00', 'Completed'),
(4, 1, '2025-06-15 14:00:00', 'Scheduled'),
(5, 4, '2025-08-25 10:30:00', 'Completed'),
(6, 5, '2025-09-15 12:00:00', 'Cancelled'),
(7, 6, '2025-10-20 15:00:00', 'Completed'),
(8, 7, '2025-11-10 09:00:00', 'Scheduled'),
(9, 8, '2026-01-20 11:30:00', 'Completed'),
(10, 2, '2026-02-25 13:00:00', 'Scheduled'),
(1, 7, '2026-03-05 10:00:00', 'Completed'),
(2, 3, '2026-04-12 14:30:00', 'Completed'),
(3, 1, '2026-05-18 09:00:00', 'Cancelled'),
(4, 6, '2026-06-22 11:00:00', 'Completed'),
(5, 4, '2026-07-15 16:00:00', 'Scheduled');

SELECT * FROM Appointments

INSERT INTO Medical_Records
(patient_id, doctor_id, diagnosis, prescription, treatment_date)
VALUES
(1, 1, 'Hypertension', 'Amlodipine 5mg', '2025-01-15'),
(2, 2, 'Migraine', 'Sumatriptan 50mg', '2025-02-20'),
(3, 3, 'Acne', 'Topical Cream', '2025-04-10'),
(4, 1, 'High Blood Pressure', 'Losartan 50mg', '2025-06-15'),
(5, 4, 'Knee Pain', 'Pain Relief Medicine', '2025-08-25'),
(6, 5, 'Fever', 'Paracetamol', '2025-09-15'),
(7, 6, 'Heart Disease', 'Atorvastatin 20mg', '2025-10-20'),
(8, 7, 'Epilepsy', 'Levetiracetam', '2025-11-10'),
(9, 8, 'Skin Allergy', 'Antihistamine', '2026-01-20'),
(10, 2, 'Migraine', 'Sumatriptan 50mg', '2026-02-25'),
(1, 7, 'Neurological Checkup', 'Follow-up Treatment', '2026-03-05'),
(2, 3, 'Skin Infection', 'Antibiotic Cream', '2026-04-12');

SELECT * FROM Medical_Records


INSERT INTO Billing
(patient_id, appointment_id, amount, payment_status, payment_date)
VALUES
(1, 1, 1500.00, 'Paid', '2025-01-15'),
(2, 2, 1800.00, 'Paid', '2025-02-20'),
(3, 3, 1200.00, 'Paid', '2025-04-10'),
(4, 4, 1500.00, 'Pending', NULL),
(5, 5, 1000.00, 'Paid', '2025-08-25'),
(6, 6, 800.00, 'Cancelled', NULL),
(7, 7, 1600.00, 'Paid', '2025-10-20'),
(8, 8, 2000.00, 'Pending', NULL),
(9, 9, 1100.00, 'Paid', '2026-01-20'),
(10, 10, 1800.00, 'Paid', '2026-02-25'),
(1, 11, 2000.00, 'Paid', '2026-03-05'),
(2, 12, 1200.00, 'Paid', '2026-04-12'),
(3, 13, 1500.00, 'Cancelled', NULL),
(4, 14, 1600.00, 'Paid', '2026-06-22'),
(5, 15, 1000.00, 'Pending', NULL);

SELECT * FROM Billing

INSERT INTO Departments (department_name)
VALUES
('Cardiology'),
('Neurology'),
('Dermatology'),
('Orthopedics'),
('Pediatrics');

SELECT * FROM Departments


INSERT INTO Doctor_Department (doctor_id, department_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3);

SELECT * FROM Doctor_Department

INSERT INTO Patients
(name, dob, gender, phone_number, email, address, registration_date)
VALUES
('Pooja Patel', '2002-02-10', 'Female', '9876543220',
 'pooja@gmail.com', 'Surat', '2026-09-01');
 
SELECT * FROM Patients

UPDATE Patients
SET phone_number = '9876543221',
    address = 'Ahmedabad'
WHERE patient_id = 11;

SELECT *
FROM Patients
WHERE patient_id = 11;


SELECT *
FROM Appointments
WHERE status = 'Cancelled'
AND appointment_date < DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

DELETE FROM Appointments
WHERE status = 'Cancelled'
AND appointment_date < DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

SELECT *
FROM Appointments
WHERE status = 'Cancelled';

#last year mein regisetred patients
SELECT *
FROM Patients
WHERE registration_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);


# top 5 highest-paying patients
SELECT patient_id, SUM(amount) AS total_paid
FROM Billing
WHERE payment_status = 'Paid'
GROUP BY patient_id
ORDER BY total_paid DESC
LIMIT 5;


SELECT *
FROM Doctors
WHERE consultation_fee > 1000;



#Scheduled appointments + doctor_id = 3

SELECT *
FROM Appointments
WHERE status = 'Scheduled'
AND doctor_id = 3;


#Cardiology OR Neurology doctors

SELECT *
FROM Doctors
WHERE specialization = 'Cardiology'
OR specialization = 'Neurology';

SELECT *
FROM Patients
WHERE patient_id NOT IN (
    SELECT DISTINCT patient_id
    FROM Appointments
    WHERE appointment_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
);

#sorting & grouping
SELECT doctor_id, name, specialization, consultation_fee
FROM Doctors
ORDER BY consultation_fee DESC;

#doctor wise patient count

SELECT 
    d.doctor_id,
    d.name AS doctor_name,
    COUNT(DISTINCT a.patient_id) AS patient_count
FROM Doctors d
LEFT JOIN Appointments a
    ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.name
ORDER BY patient_count DESC;


#Department wise total revenue

SELECT 
    dep.department_name,
    SUM(b.amount) AS total_revenue
FROM Billing b
JOIN Appointments a
    ON b.appointment_id = a.appointment_id
JOIN Doctors d
    ON a.doctor_id = d.doctor_id
JOIN Doctor_Department dd
    ON d.doctor_id = dd.doctor_id
JOIN Departments dep
    ON dd.department_id = dep.department_id
WHERE b.payment_status = 'Paid'
GROUP BY dep.department_id, dep.department_name
ORDER BY total_revenue DESC;

#total revenue
#SUM
SELECT SUM(amount) AS total_revenue
FROM Billing
WHERE payment_status = 'Paid';

# AVG

SELECT AVG(consultation_fee) AS average_consultation_fee
FROM Doctors;

# MAX 
SELECT MAX(consultation_fee) AS highest_consultation_fee
FROM Doctors;

#MIN 
SELECT MIN(consultation_fee) AS lowest_consultation_fee
FROM Doctors;

#COUNT

SELECT 
    d.doctor_id,
    d.name AS doctor_name,
    COUNT(a.appointment_id) AS total_visits
FROM Doctors d
JOIN Appointments a
    ON d.doctor_id = a.doctor_id
WHERE a.status = 'Completed'
GROUP BY d.doctor_id, d.name
ORDER BY total_visits DESC
LIMIT 1;

#patient + medical record
SELECT
    p.patient_id,
    p.name AS patient_name,
    m.record_id,
    m.diagnosis,
    m.treatment_date
FROM Patients p
JOIN Medical_Records m
    ON p.patient_id = m.patient_id;
    
# doctor + medical record
SELECT
    d.doctor_id,
    d.name AS doctor_name,
    m.record_id,
    m.diagnosis
FROM Doctors d
JOIN Medical_Records m
    ON d.doctor_id = m.doctor_id;


# invoice + appointment

SELECT
    b.invoice_id,
    b.amount,
    b.payment_status,
    a.appointment_id,
    a.appointment_date,
    a.status
FROM Billing b
JOIN Appointments a
    ON b.appointment_id = a.appointment_id;
    
inner join doctors + dapertment 

SELECT
    d.doctor_id,
    d.name AS doctor_name,
    dep.department_name
FROM Doctors d
INNER JOIN Doctor_Department dd
    ON d.doctor_id = dd.doctor_id
INNER JOIN Departments dep
    ON dd.department_id = dep.department_id;
    
#left join patient + complete appointment 

SELECT
    p.patient_id,
    p.name AS patient_name,
    a.appointment_id,
    a.appointment_date,
    a.status
FROM Patients p
LEFT JOIN Appointments a
    ON p.patient_id = a.patient_id
    AND a.status = 'Completed';
    
right join appointmenrt + billing 

SELECT
    a.appointment_id,
    a.appointment_date,
    b.invoice_id,
    b.amount,
    b.payment_status
FROM Billing b
RIGHT JOIN Appointments a
    ON b.appointment_id = a.appointment_id
WHERE b.invoice_id IS NULL;

# full outer join  never-booked patients

SELECT
    p.patient_id,
    p.name AS patient_name,
    a.appointment_id
FROM Patients p
LEFT JOIN Appointments a
    ON p.patient_id = a.patient_id
WHERE a.appointment_id IS NULL;


#monthy visits

SELECT
    MONTH(appointment_date) AS visit_month,
    COUNT(*) AS total_visits
FROM Appointments
GROUP BY MONTH(appointment_date)
ORDER BY visit_month;

#hostpital stay duration 

ALTER TABLE Patients
ADD admission_date DATE,
ADD discharge_date DATE;

# treatment data 
SELECT
    record_id,
    patient_id,
    treatment_date,
    DATE_FORMAT(treatment_date, '%d-%m-%Y') AS formatted_date
FROM Medical_Records;

#patient name upercase

SELECT
    patient_id,
    UPPER(name) AS patient_name_uppercase
FROM Patients;

#doctor names  extra space removing

SELECT
    doctor_id,
    TRIM(name) AS doctor_name
FROM Doctors;

#missing phone number 
SELECT
    patient_id,
    name,
    COALESCE(NULLIF(TRIM(phone_number), ''), 'Not Available') AS phone_number
FROM Patients;


# doctor ranking by treayed patients 
SELECT
    d.doctor_id,
    d.name AS doctor_name,
    COUNT(a.appointment_id) AS treated_patients,
    RANK() OVER (
        ORDER BY COUNT(a.appointment_id) DESC
    ) AS doctor_rank
FROM Doctors d
LEFT JOIN Appointments a
    ON d.doctor_id = a.doctor_id
    AND a.status = 'Completed'
GROUP BY d.doctor_id, d.name
ORDER BY doctor_rank;

#monthy comutative revenue

SELECT
    DATE_FORMAT(b.payment_date, '%Y-%m') AS payment_month,
    SUM(b.amount) AS monthly_revenue,
    SUM(SUM(b.amount)) OVER (
        ORDER BY DATE_FORMAT(b.payment_date, '%Y-%m')
    ) AS cumulative_revenue
FROM Billing b
WHERE b.payment_status = 'Paid'
GROUP BY DATE_FORMAT(b.payment_date, '%Y-%m')
ORDER BY payment_month;

# appointment running total 
SELECT
    appointment_id,
    patient_id,
    doctor_id,
    appointment_date,
    COUNT(*) OVER (
        ORDER BY appointment_date
    ) AS running_total
FROM Appointments
ORDER BY appointment_date;


# patient risk level 
SELECT
    p.patient_id,
    p.name AS patient_name,
    COUNT(m.record_id) AS total_records,
    CASE
        WHEN COUNT(m.record_id) > 5 THEN 'High'
        WHEN COUNT(m.record_id) BETWEEN 3 AND 5 THEN 'Medium'
        ELSE 'Low'
    END AS risk_level
FROM Patients p
LEFT JOIN Medical_Records m
    ON p.patient_id = m.patient_id
GROUP BY p.patient_id, p.name
ORDER BY total_records DESC;


#doctor category 

SELECT
    doctor_id,
    name AS doctor_name,
    experience_years,
    CASE
        WHEN experience_years > 15 THEN 'Senior'
        WHEN experience_years BETWEEN 5 AND 15 THEN 'Mid-Level'
        ELSE 'Junior'
    END AS doctor_category
FROM Doctors
ORDER BY experience_years DESC;


# patient table date adding 
ALTER TABLE Patients
ADD admission_date DATE,
ADD discharge_date DATE;

UPDATE Patients
SET admission_date = '2025-01-10',
    discharge_date = '2025-01-15'
WHERE patient_id = 1;

UPDATE Patients
SET admission_date = '2025-02-15',
    discharge_date = '2025-02-20'
WHERE patient_id = 2;

UPDATE Patients
SET admission_date = '2025-04-05',
    discharge_date = '2025-04-10'
WHERE patient_id = 3;


SELECT
    patient_id,
    name,
    admission_date,
    discharge_date,
    DATEDIFF(discharge_date, admission_date) AS stay_days
FROM Patients
WHERE admission_date IS NOT NULL
  AND discharge_date IS NOT NULL;
  
  SELECT
    p.patient_id,
    p.name AS patient_name,
    p.gender,
    p.phone_number,
    d.name AS doctor_name,
    d.specialization,
    dep.department_name,
    a.appointment_date,
    a.status AS appointment_status,
    m.diagnosis,
    m.treatment_date,
    b.amount,
    b.payment_status
FROM Patients p
LEFT JOIN Appointments a
    ON p.patient_id = a.patient_id
LEFT JOIN Doctors d
    ON a.doctor_id = d.doctor_id
LEFT JOIN Doctor_Department dd
    ON d.doctor_id = dd.doctor_id
LEFT JOIN Departments dep
    ON dd.department_id = dep.department_id
LEFT JOIN Medical_Records m
    ON p.patient_id = m.patient_id
    AND (a.doctor_id = m.doctor_id OR a.doctor_id IS NULL)
LEFT JOIN Billing b
    ON a.appointment_id = b.appointment_id
ORDER BY p.patient_id;