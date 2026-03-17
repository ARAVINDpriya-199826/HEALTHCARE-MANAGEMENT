use health_care;
create table Treatments_raw (
Treatment_id INT,
Appointment_id INT,
Treatment_type VARCHAR(50),
Medicine_cost INT,
Lab_cost INT,
Procedure_cost INT 
);

Select*from Treatments_raw;
create table Treatments as select*from Treatments_raw;
SELECT*FROM Treatments;



update treatments
set treatment_type='Surgery'
where treatment_type='Surgeon';


SELECT *,
       (Medicine_cost + Lab_cost + Procedure_cost) AS total_cost
FROM treatments;


SELECT *,
CASE
    WHEN (total_cost) < 3000
         THEN 'Low Cost'
    WHEN (total_cost) BETWEEN 3000 AND 7000
         THEN 'Medium Cost'
    ELSE 'High Cost'
END AS cost_category
FROM treatments;