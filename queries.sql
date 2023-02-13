-- First query

SELECT e.emp_no, e.last_name, e.first_name,e.sex,s.salary
FROM employees e
JOIN salaries s
ON (e.emp_no = s.emp_no);

-- Second query

SELECT *
FROM employees 

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986%';

-- Third query

SELECT e.emp_no, e.first_name, e.last_name, d.dept_no, de.dept_name AS department_name
FROM employees e
JOIN dept_manager d
ON (e.emp_no = d.emp_no)
  JOIN departments as de
  ON (de.dept_no = d.dept_no);
  
-- Fourth query

SELECT e.emp_no, e.first_name, e.last_name, d.dept_no, de.dept_name AS department_name
FROM employees e
JOIN dept_emp d
ON (e.emp_no = d.emp_no)
  JOIN departments as de
  ON (de.dept_no = d.dept_no);
  
-- Firth query

SELECT *
FROM employees 

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND  last_name LIKE 'B%';

-- Sixth query

SELECT emp_no, last_name, first_name 
FROM employees
WHERE emp_no IN
(
  SELECT emp_no
  FROM dept_emp
  WHERE dept_no IN
  (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Sales'
  )
);

-- Seventh query

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name AS department_name
FROM employees e
LEFT JOIN dept_emp de
ON e.emp_no = de.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no
WHERE dept_name IN ('Sales', 'Development');

-- Eight query

SELECT last_name, COUNT(last_name) AS "last name count"
FROM employees 
GROUP BY last_name
ORDER BY "last name count" DESC;
