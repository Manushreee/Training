USE employees;
SHOW TABLES;
DESC titles;
DESC employees;
DESC salaries;
DESC dept_emp;
SELECT * FROM dept_manager;
DESC departments;
SELECT * FROM employees LIMIT 5;

-- 1. Retrieve the first name, last name, and job title of all employees.
SELECT e.first_name AS 'First Name', e.last_name AS 'Last Name', t.title AS 'Title'
FROM employees e
INNER JOIN titles t ON e.emp_no = t.emp_no;

-- 2. Find all employees who work in the Sales department.
SELECT e.emp_no, e.first_name AS 'First Name', e.last_name AS 'Last Name', e.gender, d.dept_name AS 'Department'
FROM employees e
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- 3. Calculate the average salary of all employees.
SELECT AVG(s.salary) AS 'Average Salary' 
FROM salaries s;

-- 4. Find the total number of employees in each department.
SELECT COUNT(e.emp_no) AS 'Total Employees', d.dept_name AS 'Department'
FROM departments d
INNER JOIN dept_emp de ON d.dept_no = de.dept_no
INNER JOIN employees e ON de.emp_no = e.emp_no
GROUP BY d.dept_name;

-- 5. List departments with more than 5 employees.
SELECT d.dept_name AS 'Department'
FROM departments d
INNER JOIN dept_emp de ON d.dept_no = de.dept_no
GROUP BY d.dept_name 
HAVING COUNT(de.emp_no) > 5;

-- 6. List all employees and the names of their managers. (No manager attribute present)

-- 7. Find all employees who work in the 'Marketing' or 'Finance' departments.
SELECT e.emp_no, e.first_name AS 'First Name', e.last_name AS 'Last Name', e.gender, d.dept_name AS 'Department'
FROM employees e
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Marketing', 'Finance');

-- 8. Find all employees whose first name starts with the letter 'A'.
SELECT * FROM employees 
WHERE first_name LIKE 'A%';

-- 9. Combine the first names of employees and customers into a single list. (No customer entity present)

-- 10. Find the names of employees who have placed the highest number of orders. (Orders attribute not present)

-- 11. Find the number of Male and Female employees in the database.
SELECT gender, COUNT(*) AS 'Count'
FROM employees 
GROUP BY gender;

-- 12. Find the average salary by employee title and order by descending order.
SELECT t.title AS 'Title', AVG(s.salary) AS 'Average Salary'
FROM titles t
INNER JOIN salaries s ON t.emp_no = s.emp_no
GROUP BY t.title
ORDER BY `Average Salary` DESC;

-- 13. List the first 5 employees (id, fname, lname, department name) along with their department names.
SELECT e.emp_no, e.first_name AS 'First Name', e.last_name AS 'Last Name', d.dept_name AS 'Department'
FROM employees e
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
LIMIT 5;

-- 14. Display first name, last name, and salary of the highest paid employee.
SELECT e.first_name AS 'First Name', e.last_name AS 'Last Name', s.salary
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no
ORDER BY s.salary DESC 
LIMIT 1;

-- 15. Display the second highest paid employee.
SELECT e.first_name AS 'First Name', e.last_name AS 'Last Name', s.salary
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no
ORDER BY s.salary DESC 
LIMIT 1 OFFSET 1;
