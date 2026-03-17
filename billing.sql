use health_care;
create table billing_raw (
Bill_id INT,
Treatment_id INT,
Total_Amount INT,
INSURANCE_COVERED VARCHAR(10),
PAYMENT_METHOD VARCHAR (30)
);
Select*from billing_raw;
create table billing as select*from billing_raw;
SELECT*FROM billing;

UPDATE billing
SET PAYMENT_METHOD = 'UPI'
WHERE PAYMENT_METHOD IS NULL;

SELECT*,
CASE
    WHEN Total_Amount < 2000 THEN 'Low Bill'
    WHEN Total_Amount BETWEEN 2000 AND 8000 THEN 'Medium Bill'
    ELSE 'High Bill'
END AS Bill_Category
FROM billing;
