SELECT employee.emp_no, employee.last_name, employee.first_name, employee.sex, salary.salary
FROM employee
LEFT JOIN salary ON 
salary.emp_no= employee.emp_no;

SELECT first_name, last_name, hire_date
FROM employee
WHERE hire_date >= '1986-01-01'
AND hire_date < '1987-01-01';

SELECT dept_manager.dept_no, departments.dept_name, employee.emp_no, employee.last_name, employee.first_name
FROM employee
JOIN dept_manager
ON employee.emp_no = dept_manager.emp_no
JOIN departments 
ON dept_manager.dept_no = departments.dept_no;

SELECT dept_emp.dept_no, employee.emp_no, employee.last_name, employee.first_name, departments.dept_name
FROM employee
INNER JOIN dept_emp
ON employee.emp_no = dept_emp.emp_no
INNER JOIN departments 
ON dept_emp.dept_no = departments.dept_no;

SELECT first_name, last_name, sex
FROM employee
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT employee.emp_no, employee.last_name, employee.first_name, departments.dept_name
FROM employee
JOIN dept_emp
ON employee.emp_no = dept_emp.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales';

SELECT employee.emp_no, employee.last_name, employee.first_name, departments.dept_name
FROM employee
JOIN dept_emp
ON employee.emp_no = dept_emp.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE dept_name IN ('Sales', 'Development');

SELECT employee.last_name, COUNT(employee.last_name) AS "Last Name Count"
FROM Employee
GROUP BY employee.last_name
ORDER BY "Last Name Count" DESC;


