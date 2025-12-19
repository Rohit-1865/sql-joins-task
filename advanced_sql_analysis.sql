CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    quantity INT,
    price NUMERIC(10,2),
    sale_date DATE
);

INSERT INTO sales (customer_name, product, quantity, price, sale_date) VALUES
('Bheem', 'Laptop', 1, 60000, '2024-01-10'),
('kalia', 'Mobile', 2, 40000, '2024-01-15'),
('raju ', 'Mouse', 3, 1500, '2024-02-05'),
('kalia', 'Laptop', 1, 62000, '2024-02-20'),
('Bheem', 'Keyboard', 1, 2000, '2024-03-10'),
('raju', 'Mobile', 1, 42000, '2024-03-18');

 -----CTE -total sales per customer
 WITH customer_sales AS (
    SELECT
        customer_name,
        SUM(quantity * price) AS total_spent
    FROM sales
    GROUP BY customer_name
)
SELECT * FROM customer_sales;
 --------Analysis Using Subquery -Customers who spent more than the average sale value
 SELECT customer_name, total_spent
FROM (
    SELECT
        customer_name,
        SUM(quantity * price) AS total_spent
    FROM sales
    GROUP BY customer_name
) sub
WHERE total_spent >
      (SELECT AVG(quantity * price) FROM sales);
-----Analysis Using Window Function Running total of sales over time	  
	  SELECT
    sale_date,
    SUM(quantity * price) AS daily_sales,
    SUM(SUM(quantity * price)) OVER (ORDER BY sale_date) AS running_total
FROM sales
GROUP BY sale_date
ORDER BY sale_date;

