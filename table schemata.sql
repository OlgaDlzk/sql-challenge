-- Creating tables and establishing data types

CREATE TABLE titles (
  title_id VARCHAR(20) NOT NULL PRIMARY KEY,
  title VARCHAR(200) NOT NULL
  );
  
-- Drop tables when needed
DROP TABLE salaries;

CREATE TABLE departments (
  dept_no VARCHAR(20) NOT NULL PRIMARY KEY,
  dept_name VARCHAR(200) NOT NULL
  );

CREATE TABLE employees (
  emp_no INT NOT NULL PRIMARY KEY,
  emp_title_id VARCHAR(200) NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
  birth_date VARCHAR (50),
  first_name VARCHAR(200) NOT NULL,
  last_name VARCHAR(200) NOT NULL,
  sex VARCHAR(10),
  hire_date VARCHAR(200) NOT NULL
  );
  
CREATE TABLE dept_manager (
  dept_no VARCHAR(20) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  emp_no INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  PRIMARY KEY (dept_no, emp_no)
  );
  
CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  dept_no VARCHAR(20) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  PRIMARY KEY (emp_no, dept_no)
  );
  
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  salary INT NOT NULL,
  PRIMARY KEY (emp_no, salary)
  );
  
  
-- Query all fields from the table dept_manager
SELECT *
FROM dept_emp;

