DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS manager;
DROP TABLE IF EXISTS salaries;


CREATE TABLE titles ( 
	title_id varchar PRIMARY KEY, 
	title varchar NOT NULL
); 

CREATE TABLE departments (
	dept_no varchar PRIMARY KEY,
	dept_name varchar NOT NULL
); 

CREATE TABLE employees ( 
	emp_no int PRIMARY KEY,
	emp_title_id varchar NOT NULL,
	birth_date date NOT NULL,
	first_name varchar NOT NULL, 
	last_name varchar NOT NULL, 
	sex varchar NOT NULL, 
	hire_date date NOT NULL, 
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
); 

CREATE TABLE dept_emp ( 
	id serial PRIMARY KEY,
	emp_no int NOT NULL,
	dept_no varchar NOT NULL, 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no), 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
); 

CREATE TABLE manager ( 
	id serial PRIMARY KEY,
	dept_no varchar NOT NULL, 
	emp_no int,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
); 

CREATE TABLE salaries ( 
	id serial PRIMARY KEY,
	emp_no int NOT NULL, 
	salary int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
); 

