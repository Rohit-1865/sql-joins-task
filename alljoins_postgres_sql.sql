DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS departments CASCADE;

CREATE TABLE departments (
  dept_id INTEGER PRIMARY KEY,
  dept_name TEXT NOT NULL
);

CREATE TABLE employees (
  emp_id INTEGER PRIMARY KEY,
  emp_name TEXT NOT NULL,
  dept_id INTEGER REFERENCES departments(dept_id)
);
INSERT INTO departments (dept_id, dept_name) VALUES
  (1, 'Engineering'),
  (2, 'HR'),
  (3, 'Sales'),
  (4,'operations'),
  (5, 'Legal');  

INSERT INTO employees (emp_id, emp_name, dept_id) VALUES
  (101, 'Abhii',   1),
  (102, 'Tanuu',     2),
  (103, 'Soham', NULL), 
  (104, 'Swandya',   3),
  (105, 'Ajit',     4); 
 
-- 1) INNER JOIN
-- Shows only rows where dept_id matches in both tables 
SELECT e.emp_id, e.emp_name, e.dept_id, d.dept_name
FROM employees e
INNER JOIN departments d
    ON e.dept_id = d.dept_id
ORDER BY e.emp_id;

-- 2) LEFT JOIN
-- Shows all employees even if department is missing
SELECT e.emp_id, e.emp_name, e.dept_id, d.dept_name
FROM employees e
LEFT JOIN departments d
    ON e.dept_id = d.dept_id
ORDER BY e.emp_id;

-- 3) RIGHT JOIN
-- Shows all departments even if they have no employees
SELECT e.emp_id, e.emp_name, d.dept_id, d.dept_name
FROM employees e
RIGHT JOIN departments d
    ON e.dept_id = d.dept_id
ORDER BY d.dept_id;


-- 4) FULL OUTER JOIN
-- Shows all employees + all departments
SELECT e.emp_id, e.emp_name, e.dept_id, d.dept_name
FROM employees e
FULL OUTER JOIN departments d
    ON e.dept_id = d.dept_id
ORDER BY COALESCE(e.dept_id, d.dept_id), e.emp_id;

