Create database health_care;
use health_care;
create table patients_raw (
patient_id INT,
patient_Name VARCHAR(100),
Gender VARCHAR(20),
Age INT,
City VARCHAR(50),
Blood_group VARCHAR(5),
Registration_date VARCHAR(20)
);

Select*from patients_raw;

create table Patients as select*from patients_raw;
drop table Patients;
select*from Patients;



update patients
set Gender='Male'
where Gender='M';


UPDATE patients
SET city = CASE city
    WHEN 'CBE' THEN 'Coimbatore'
    WHEN 'tricy' THEN 'Trichy'
    WHEN 'Tricy' THEN 'Trichy'
    WHEN 'Mysuru' THEN 'Mysore'
END
WHERE city IN ('CBE', 'tricy', 'Tricy', 'Mysuru');



CREATE TABLE patients_clean AS
SELECT DISTINCT * FROM patients;

select patient_id,count(patient_id) from patients
group by patient_id
having count(patient_id) >1;

SELECT*FROM patients_clean;
drop table patients;

