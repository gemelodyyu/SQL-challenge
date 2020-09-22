# EmployeeSQL 



## Background

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

In this project, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. 


## Data Modeling 


An ERD of the tables: 


![EmployeeSQL ERD](https://user-images.githubusercontent.com/55970064/93844114-bd872780-fc61-11ea-8a98-72d98071d7a2.png)


## Data Analysis


1. List the following details of each employee: employee number, last name, first name, sex, and salary.


2. List first name, last name, and hire date for employees who were hired in 1986.


3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


4. List the department of each employee with the following information: employee number, last name, first name, and department name.


5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


6. List all employees in the Sales department, including their employee number, last name, first name, and department name.


7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


## Bonus


As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:


1. Import the SQL database into Pandas. 


2. Create a histogram to visualize the most common salary ranges for employees.


![histogram](https://user-images.githubusercontent.com/55970064/93844262-35ede880-fc62-11ea-89cc-aab4930e824b.png)


3. Create a bar chart of average salary by title.


![average_salary_bar](https://user-images.githubusercontent.com/55970064/93844277-41d9aa80-fc62-11ea-8ee9-ac0fdbd113e8.png)

