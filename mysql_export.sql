-- mysql_export.sql
-- Export data from MySQL to CSV

SELECT customer_id, customer_name, email, city
FROM customers
INTO OUTFILE 'customers.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';