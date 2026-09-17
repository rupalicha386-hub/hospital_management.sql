# hospital_management.sql

Hospital Management System

Project Overview

The Hospital Management System is a SQL-based database project designed to manage important hospital information such as patients, doctors, appointments, medical records, billing, and departments.

The project demonstrates practical use of SQL database design, relationships, CRUD operations, joins, subqueries, aggregate functions, date/time functions, string functions, window functions, and CASE statements.

Objectives

Store and manage patient information.

Store doctor details and specializations.

Manage hospital appointments.

Maintain medical treatment records.

Manage billing and payment information.

Organize doctors into departments.

Practice important SQL concepts using a realistic database.

Database Tables

Table

Description

Patients

Stores patient personal and registration details

Doctors

Stores doctor details, specialization, fees, and experience

Appointments

Stores patient-doctor appointments and their status

Medical_Records

Stores diagnosis, prescription, and treatment details

Billing

Stores invoice, amount, and payment information

Departments

Stores hospital department information

Doctor_Department

Connects doctors with departments

Database Relationships

Patients → Appointments through patient_id

Doctors → Appointments through doctor_id

Patients → Medical_Records through patient_id

Doctors → Medical_Records through doctor_id

Patients → Billing through patient_id

Appointments → Billing through appointment_id

Doctors ↔ Departments through Doctor_Department

SQL Concepts Used

CRUD Operations

INSERT – Add new patients, doctors, and appointments.

UPDATE – Update patient details.

DELETE – Remove old cancelled appointments according to the project requirement.

SQL Clauses

WHERE

HAVING

LIMIT

ORDER BY

GROUP BY

Operators

AND

OR

NOT

Aggregate Functions

SUM()

AVG()

MAX()

MIN()

COUNT()

Joins

INNER JOIN

LEFT JOIN

RIGHT JOIN

FULL OUTER JOIN equivalent using LEFT JOIN, RIGHT JOIN, and UNION

Subqueries

The project includes subqueries for:

Doctors handling a large number of patients.

Patient with the highest treatment spending.

Appointments handled by Dermatology specialists.

Date and Time Functions

YEAR()

MONTH()

DATEDIFF()

DATE_FORMAT()

DATE_SUB()



String Functions

UPPER()

TRIM()

COALESCE()



Window Functions

RANK()

SUM() OVER()

COUNT() OVER()



CASE Statements

Patient Risk Level based on number of medical records.

Doctor Category based on years of experience.


Key Functionalities

The project can be used to:


Find patients registered during the last year.

Find the top 5 highest-paying patients.

Find doctors with consultation fees above ₹1000.

Find scheduled appointments for a particular doctor.

Find Cardiology or Neurology doctors.

Find patients who did not visit during the last year.

Count patients doctor-wise.

Calculate department-wise revenue.

Calculate total revenue and average consultation fee.

Find the most visited doctor.

Connect medical records with the correct patient and doctor.

Connect invoices with appointments.

Find patients who have never booked an appointment.

Calculate hospital stay duration.

Display formatted patient and doctor information.

Rank doctors according to treated patients.

Calculate cumulative revenue.

Categorize patients and doctors using CASE.

Sample Combined Output

The project also contains a combined query that brings major information together:

Patient → Doctor → Department → Appointment → Medical Record → Billing

This output can be used for project presentation and screenshots.

Tools & Technologies

MySQL

SQL

GitHub

MySQL Workbench / SQL Environment

How to Run



Step 1: Create the Database

CREATE DATABASE hospital_management;

USE hospital_management;



Step 2: Run the SQL File


Open hospital_management.sql in MySQL and execute the statements in order.





Step 3: Check the Tables

SHOW TABLES;

Step 4: View Data

SELECT * FROM Patients;

SELECT * FROM Doctors;

SELECT * FROM Medical_Records;

SELECT * FROM Billing;

SELECT * FROM Departments;

SELECT * FROM Doctor_Department;



Step 5: Run the Required Queries

Execute the query sections included in hospital_management.sql to view the required outputs.

Project Structure

Hospital-Management-System/
│
├── hospital_management.sql
├── README.md
└── screenshots/
    └── project_outputs.png

Conclusion

This project provides a practical example of how SQL can be used to design and manage a hospital database. It covers database creation, table relationships, data manipulation, analysis queries, joins, subqueries, functions, window functions, and conditional logic.

The project demonstrates the use of SQL to organize hospital data and generate meaningful information for analysis and presentation.
