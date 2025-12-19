----to import postgre_import.sql (direct csv file content)
---purpose is data my sql to postgresql

----- the first step is to create table
CREATE TABLE IF NOT EXISTS customer(
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
	last_name VARCHAR(50),
    email VARCHAR(100),
    address_id bigint
);
------this step includes importing csv data
COPY customer (customer_id,first_name,last_name,email,address_id)
FROM 'C:\Users\rohit\Downloads\customer.csv'
DELIMITER ','
CSV HEADER;
------ data check 
SELECT COUNT(*) AS total_records FROM customer;
SELECT * FROM customer;

---- in pgadmin this step we can perfrom directly 
---go to schemas+tables+find table customer+import/export
--- +add filename +format csv +encoding UTF8