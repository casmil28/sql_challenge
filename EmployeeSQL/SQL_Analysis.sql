--Question 1
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name, 
	e.sex, 
	s.salary 
FROM employees as e
INNER JOIN salaries as s 
	ON e.emp_no = s.emp_no;
	
--Question 2
SELECT 
	e.first_name,
	e.last_name,
	e.hire_date
FROM employees as e
WHERE e.hire_date >= '1986-01-01' 
	AND e.hire_date <= '1986-12-31';


--Question 3
SELECT 
	d.dept_no,
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name 
FROM employees as e
INNER JOIN dept_manager as dm 
	ON e.emp_no = dm.emp_no
INNER JOIN departments as d 
	ON dm.dept_no = d.dept_no;
	
--Question 4
SELECT
	de.dept_no,
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees as e
INNER JOIN dept_emp as de
	ON e.emp_no = de.emp_no
INNER JOIN departments as d
	ON de.dept_no = d.dept_no;
	
--Question 5
SELECT 
	e.first_name,
	e.last_name,
	e.sex
FROM employees as e
WHERE e.first_name = 'Hercules' 
	AND e.last_name LIKE 'B%';

--Question 6
SELECT
	e.emp_no,
	e.last_name,
	e.first_name
FROM employees as e
INNER JOIN dept_emp as de
	ON e.emp_no = de.emp_no
INNER JOIN departments as d
	ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--Question 7
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees as e
INNER JOIN dept_emp as de
	ON e.emp_no = de.emp_no
INNER JOIN departments as d
	ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' 
	OR d.dept_name = 'Development';

--Question 8
SELECT
	e.last_name,
	COUNT (e.last_name)
FROM employees as e
GROUP BY e.last_name
ORDER BY COUNT (e.last_name) DESC;
