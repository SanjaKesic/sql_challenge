SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT dept_manager.dept_no, dept_manager.emp_no, departments.dept_name, employees.last_name,
employees.first_name
FROM dept_manager
LEFT JOIN departments
ON dept_manager.dept_no=departments.dept_no
LEFT JOIN employees
ON dept_manager.emp_no=employees.emp_no
ORDER BY departments.dept_name

SELECT employees.emp_no, employees.last_name, employees.first_name, 
dept_emp.dept_no, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no=dept_emp.emp_no
LEFT JOIN departments
ON dept_emp.dept_no=departments.dept_no
ORDER BY dept_no

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT employees.emp_no, employees.last_name, employees.first_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
WHERE dept_no='d007'

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no='d007' OR departments.dept_no='d005'

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;