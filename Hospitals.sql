use health_care;
create table Hospitals_raw (
Hospital_id INT,
Hospital_name VARCHAR(100),
Email VARCHAR(100),
City VARCHAR (50),
State VARCHAR(20),
Bed_capacity INT,
ICU_capacity INT,
Operation_theatres INT,
Ambulance_count INT,
Emergency_available VARCHAR(10),
Pharmacy_available VARCHAR (10),
Established_year INT,
Rating INT,
Averagedaily_patients INT,
Staff_count INT
);
drop table Hospitals_raw;
Select*from Hospitals_raw;

create table Hospitals as select*from Hospitals_raw;
drop table hospitals;
Select*from hospitals;

UPDATE hospitals
set STATE=case STATE
when 'TN' then'Tamil Nadu'
WHEN 'WB' then 'West Bengal'
end
WHERE STATE IN ('TN','WB');

