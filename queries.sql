-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no as "employee number", 
	e.last_name as "last name", 
	e.first_name as "first name", 
	e.sex, 
	s.salary 
FROM employees as e
INNER JOIN salaries as s ON
e.emp_no = s.emp_no; 

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' 
AND hire_date <= '1986-12-31' ; 

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT m.dept_no as "department number",
	d.dept_name as "department name", 
	m.emp_no as "employee number", 
	e.last_name, 
	e.first_name
FROM manager as m 
INNER JOIN departments as d ON 
m.dept_no = d.dept_no 
	INNER JOIN employees as e ON
	m.emp_no = e.emp_no; 
	
-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT de.emp_no as "employee number",
	e.last_name, 
	e.first_name,
	d.dept_name as "department name"
FROM dept_emp as de 
INNER JOIN employees as e ON
de.emp_no = e.emp_no
INNER JOIN departments as d ON 
de.dept_no = d.dept_no; 

-- List first name, last name, and sex for employees 
-- whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex 
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'; 

-- List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.
SELECT employees.emp_no as "employee number", 
		employees.last_name as "last name", 
		employees.first_name as "first name", 
		departments.dept_name as "department name"
FROM employees 
INNER JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no=departments.dept_no
WHERE dept_name = 'Sales'; 

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
SELECT employees.emp_no as "employee number", 
		employees.last_name as "last name", 
		employees.first_name as "first name", 
		departments.dept_name as "department name"
FROM employees 
INNER JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no=departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'; 

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) as "last name count"
FROM employees
GROUP BY last_name
ORDER BY "last name count" desc; 

