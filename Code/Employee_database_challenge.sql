--Deliverable #1: The number of Retiring Employees by Title (50 Points)

--Steps 1-5
Select employees.emp_no,
	employees.first_name,
	employees.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO retirment_titles
FROM employee
INNER JOIN titles
ON (employees.emp_no = titles.emp_no)
WHERE (birth_date between '1952-01-01' AND '1955-12-31')
order by employees.emp_no;


SELECT

--_
SELECT * FROM retirement_titles


--Steps 9-11
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO retirment_title
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER by emp_no, title DESC;

SELECT * FROM retirement_title;

--Step 14 Create and Export Unique Titles

SELECT retirement_titles.emp_no,
		retirement_titles.first_name,
		retirement_titles.last_name,
		retirement_title.title
INTO unique_titles
FROM retirement_titles
INNER JOIN current_title
ON retirement_titles.emp_no = retirement_title.emp_no
WHERE to_date = ('9999-01-01')
ORDER BY retirement_titles.to_date DESC, retirement_titles.emp_no

Select * From unique_titles;


--Create and Export Ritiring Table

SELECT Count (unique_titles.title), title
INTO retiring_titles
FROM unique_titles
GROUP BY unique_titles.title
ORDER BY unique_titles.title DESC;

SELECT * FROM retiring_titles
ORDER BY COUNT(title) DESC


--Deliverable #2 THe Employees Eligible for the Mentorship Program (30 pts)



-----$%@ON (EMPLOYEE>###############)_____$%___


-----Steps 1-10




SELECT DISTINCT ON (employee.emp_no) employee.emp_no
	Employee.frist_name
	Employee.last_name
	Employee.birth_date,
	dept_emp.from_date,
	dept_emp.to_date,
	titles.title
INTO mentorship_eligibilty
FROM Employees
LEFT JOIN dept_emp
ON (employee.emp_no = dept_emp.emp_no)
LEFT JOIN titles
ON (employees.emp_no = titles.emp_no)
WHERE(employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY employee.emp_no;




SELECT * FROM mentorship_eligibilty
