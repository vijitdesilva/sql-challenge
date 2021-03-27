--Create a table departments
DROP TABLE departments;
CREATE TABLE departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
	PRIMARY KEY(dept_no)
);
--View table created as departments
SELECT * FROM departments;

--Create a table employees 
DROP TABLE employees;
CREATE TABLE employees (
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date DATE   NOT NULL,
	PRIMARY KEY (emp_no)
);	

--View table created as employees
SELECT * FROM employees;

--Create a table dept_emp
DROP TABLE dept_emp;
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR   NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);
--View table created as dept_emp
SELECT * FROM dept_emp; 

--Create a table dept_manager
DROP TABLE dept_manager;
CREATE TABLE dept_manager (
    dept_no VARCHAR  NOT NULL,
    emp_no INT  NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);
-- View table created as dept_manager
SELECT * FROM dept_manager;

--Create a table salaries
DROP TABLE salaries;
CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

--View table created as  salaries
SELECT * FROM salaries;

--Create a table title
DROP TABLE titles;
CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL
);
--View table created as titles
SELECT * FROM titles;


