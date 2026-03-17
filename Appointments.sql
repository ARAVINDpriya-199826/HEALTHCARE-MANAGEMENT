use health_care;
CREATE TABLE APPOINTMENT_RAW (
Appointment_id INT,
Doctor_id INT,
Patient_id INT,
Hospital_id INT,
Appointment_date VARCHAR(20),
Appointment_time INT,
Appointment_status VARCHAR(20),
Appointment_type VARCHAR(20),
Waiting_time_minutes INT,
Consultation_duration_minutes INT,
Consultation_fee INT,
Payment_method VARCHAR(30),
Payment_status VARCHAR(30)
);

SELECT *FROM APPOINTMENTS_RAW;

create table Appointment as select*from APPOINTMENT_RAW;
SELECT*FROM APPOINTMENT;


