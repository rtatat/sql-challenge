-- creating departments table
CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(30)
);

-- creating titles table
CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(30)
);

-- creating employees table
CREATE TABLE employees (
	emp_no VARCHAR(6) PRIMARY KEY NOT NULL,
	emp_title VARCHAR(5) REFERENCES titles(title_id),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date DATE NOT NULL
);

-- creating dept_emp table
CREATE TABLE dept_emp (
	emp_no VARCHAR(6) REFERENCES employees(emp_no),
	dept_no VARCHAR(4) REFERENCES departments(dept_no)
);

-- creating dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(4) REFERENCES departments(dept_no),
	emp_no VARCHAR(6) NOT NULL
);

-- creating salaries table
CREATE TABLE salaries (
	emp_no VARCHAR(6) REFERENCES employees(emp_no),
	salary INT NOT NULL
);