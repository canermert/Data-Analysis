🏥 London Hospital Analytics Dashboard (Excel Power Query Project)

📌 Project Overview

This project demonstrates an end-to-end data analytics workflow using Excel Power Query to transform raw healthcare data into an interactive dashboard. The dataset simulates hospital operations across Inner London boroughs, including patient demographics, admissions, treatments, and doctor activity.

The goal of this project is to showcase data cleaning, transformation (ETL), data modelling, and dashboard development skills using Excel.

📊 Dataset Description

The project is built using four CSV files:

1. Patients
PatientID (Primary Key)
PatientName
Gender
Age
Borough

2. Admissions
AdmissionID (Primary Key)
PatientID (Foreign Key)
DoctorID (Foreign Key)
AdmissionDate
DischargeDate
Diagnosis

3. Treatments
TreatmentID (Primary Key)
AdmissionID (Foreign Key)
TreatmentName
TreatmentCost

4. Doctors
DoctorID (Primary Key)
DoctorName
Department

⚙️ Tools & Technologies

Microsoft Excel
Power Query (Get & Transform)
Pivot Tables & Charts

🔄 Data Processing (ETL)

All data transformation was performed using Power Query:

Imported multiple CSV files into Excel
Cleaned and standardised data (data types, null handling, trimming text)
Validated date consistency (Admission vs Discharge)
Merged datasets using joins:
Patients + Admissions
Admissions + Doctors
Admissions + Treatments
Created a unified fact table for analysis

🧮 Calculated Fields

The following fields were created:

Length of Stay = DischargeDate − AdmissionDate
Age Band (0–18, 19–35, 36–50, 51–65)
Admission Month for time-based analysis

📈 Dashboard Features

The final Excel dashboard includes:

🔢 Key Metrics

Total Admissions
Total Treatment Cost
Average Length of Stay


📊 Visualisations

Admissions by Borough
Admissions by Department
Monthly Admission Trends

🎛️ Interactivity

Slicers for:
Gender
Age Band