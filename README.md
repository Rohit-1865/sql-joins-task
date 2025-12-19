# SQL Internship Projects – CODTECH

This repository contains the SQL projects completed as part of the **CODTECH Internship Program** using **PostgreSQL**.  
The projects demonstrate both **basic** and **advanced** SQL concepts through practical examples.

---

## 🔹 Project 1: SQL Joins Practice

### Objective
To perform different types of SQL joins to combine data meaningfully.

### Concepts Used
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN

### Description
Two tables (`employees` and `departments`) are used to demonstrate how joins work when:
- Records exist in both tables
- Records exist only in one table
- NULL values are present

### Files
- `joins_postgres_simple.sql` – SQL queries for INNER, LEFT, RIGHT, and FULL joins

### Key Learning
- INNER JOIN returns only matching records
- LEFT JOIN returns all records from the left table
- RIGHT JOIN returns all records from the right table
- FULL JOIN returns all records from both tables

---

## 🔹 Project 2: Advanced Data Analysis Using SQL

### Objective
To perform advanced data analysis using:
- Common Table Expressions (CTEs)
- Subqueries
- Window Functions

### Description
A sales dataset is analyzed to identify:
- Customer spending patterns
- High-value customers
- Ranking of customers
- Sales trends over time

### Concepts Used
- CTEs for simplifying complex queries
- Subqueries for comparative analysis
- Window functions for ranking and trend analysis

### Files
- `advanced_sql_analysis.sql` – SQL queries for advanced analysis

### Analysis Performed
- Total sales per customer
- Customers spending above average
- Ranking customers by spending
- Running total of sales over time

---

## 🛠 Tools Used
- PostgreSQL
- pgAdmin
- SQL

---

## ▶ How to Run the Projects
1. Open **pgAdmin**
2. Connect to PostgreSQL database
3. Open **Query Tool**
4. Load and execute the required `.sql` file

---

## 📌 Conclusion
These projects demonstrate the practical use of SQL for:
- Data retrieval using joins
- Advanced data analysis using CTEs, subqueries, and window functions
- Identifying meaningful trends and patterns from data

---

**Submitted as part of CODTECH Internship Program**
