use health_care;
create table Doctors_raw (
Doctor_id INT,
Doctor_name VARCHAR(100),
Hospital_id INT,
Specialist VARCHAR(50),
Age INT,
Gender VARCHAR(10),
Experience_years INT
);

Select*from Doctors_raw;

create table Doctors as select*from Doctors_raw;
select*from Doctors;

UPDATE doctors
SET SPECIALIST='Dietitian'
where specialist='Diettician';

SELECT *
FROM doctors
WHERE Experience_years > age - 22;


UPDATE doctors
SET Experience_years = age - 22
WHERE Experience_years > age - 22;

SELECT *
FROM doctors
WHERE age < 23 OR age > 80;

select*from doctors;

SELECT *,
CASE
    WHEN Experience_years < 5 THEN 'Junior'
    WHEN Experience_years BETWEEN 5 AND 15 THEN 'Mid-Level'
    ELSE 'Senior'
END AS experience_level
FROM doctors;

SELECT *,
       age - Experience_years AS starting_age
FROM doctors;
