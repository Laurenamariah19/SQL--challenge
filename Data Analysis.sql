SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex,
	   sal.salary
FROM employees AS emp
LEFT JOIN salaries AS sal
ON emp.emp_no = sal.emp_no
ORDER BY emp.emp_no ASC;

SELECT emp.first_name, emp.last_name, emp.hire_date
FROM employees AS emp
WHERE emp.hire_date BETWEEN '1/1/1986' AND '12/31/1986'
ORDER BY emp.hire_date ASC;

SELECT dept_man.dept_no, emp.emp_no, 
       emp.last_name, emp.first_name, dept.dept_name
FROM dept_manager AS dept_man 
INNER JOIN departments AS dept ON dept_man.dept_no = dept.dept_no
INNER JOIN employees AS emp ON emp.emp_no = dept_man.emp_no
ORDER BY dept.dept_name ASC;

SELECT dept_emp.dept_no, dept_emp.emp_no, emp.last_name, 
       emp.first_name, dept.dept_name
FROM dept_emp
INNER JOIN departments AS dept
ON dept.dept_no = dept_emp.dept_no
INNER JOIN employees AS emp
ON emp.emp_no = dept_emp.emp_no
ORDER BY dept_emp.dept_no ASC;

SELECT emp.first_name, emp.last_name, emp.sex
FROM employees AS emp
WHERE emp.first_name LIKE '%Hercules' AND 
	  emp.last_name LIKE 'B%';

SELECT dept_emp.emp_no, emp.last_name, 
       emp.first_name
FROM dept_emp
INNER JOIN departments AS dept
ON dept.dept_no = dept_emp.dept_no
INNER JOIN employees AS emp
ON emp.emp_no = dept_emp.emp_no
WHERE dept.dept_name = 'Sales'
ORDER BY dept_emp.emp_no ASC;

SELECT dept_emp.emp_no, emp.last_name, 
       emp.first_name, dept.dept_name
FROM dept_emp
INNER JOIN departments AS dept
ON dept.dept_no = dept_emp.dept_no
INNER JOIN employees AS emp
ON emp.emp_no = dept_emp.emp_no
WHERE dept.dept_name IN ('Sales', 'Development')
ORDER BY dept_emp.emp_no ASC;

SELECT 
    last_name, 
    COUNT(*) AS frequency
FROM 
    employees
GROUP BY 
    last_name
ORDER BY 
    frequency DESC;
