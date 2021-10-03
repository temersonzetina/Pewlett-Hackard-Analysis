---------------- CHALLENGE: Deliverable 1 ----------------------
SELECT e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN title AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.to_date,
	rt.title
INTO retiree_titles
FROM retirement_titles AS rt
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT * FROM retiree_titles

-- Retrieve the number of employees who are about to retire by department name.
SELECT COUNT(d.dept_name), d.dept_name
INTO retiree_dept
FROM dept_emp AS de
INNER JOIN retiree_titles AS rt
ON (de.emp_no = rt.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
GROUP BY d.dept_name;

-- List of managers per department
SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        ce.last_name,
        ce.first_name,
        dm.from_date,
        dm.to_date
INTO manager_info
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN current_emp AS ce
        ON (dm.emp_no = ce.emp_no);

-- Retrieve the number of employees who are about to retire by title.
SELECT COUNT(title),
INTO retiring_titles
FROM retiree_titles
GROUP BY title
ORDER BY COUNT DESC;

SELECT * FROM retiring_titles

SELECT * FROM dept_emp;

-- Retrieve the total number of current employees by title.
SELECT COUNT(emp_no), title
FROM title
WHERE (to_date = '9999-01-01')
GROUP BY title
ORDER BY COUNT DESC;

---------------- CHALLENGE: Deliverable 2 ----------------------
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.birth_date, 
	de.from_date, 
	de.to_date, 
	ti.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN title AS ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;