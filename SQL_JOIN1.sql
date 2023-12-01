// Display the details of the employees who joined the company before their managers joined the company.

Return the columns 'employee_id', 'first_name', and 'last_name'.
Return the result ordered by employee_id in ascending order.

SELECT e.employee_id, e.first_name, e.last_name
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id
WHERE e.hire_date < m.hire_date
ORDER BY e.employee_id ASC;
---------------------------------------------------------------------------------------------------
// Write a query to find details of the employees who work in the 'Human Resources' department.

Return the columns 'employee_id', 'department_id', 'first_name', 'last_name', 'job_id', and 'department_name'.
Return the result ordered by employee_id in ascending order.

SELECT e.employee_id, e.department_id, e.first_name, e.last_name, e.job_id, d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'Human Resources'
ORDER BY e.employee_id ASC;
---------------------------------------------------------------------------------------------------
// Write a query to find all the people who viewed more than one article on the same date.

Save the viewer_id as the id.
Return the result sorted by id in ascending order.

SELECT DISTINCT v.viewer_id as id
FROM views v
JOIN views a
ON v.viewer_id = a.viewer_id
AND v.view_date = a.view_date
AND v.article_id != a.article_id
ORDER BY id;
---------------------------------------------------------------------------------------------------
// Display the details of those employees who have a manager working in the department that is US (i.e., country_id) based.

Note:

Return the columns employee_id, first_name, and last_name.
Return the result ordered by employee_id in ascending order.

SELECT e.employee_id, e.first_name, e.last_name
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id
JOIN departments d
ON m.department_id = d.department_id
JOIN locations l
ON d.location_id = l.location_id
WHERE l.country_id = 'US'
ORDER BY e.employee_id;
---------------------------------------------------------------------------------------------------
// 
---------------------------------------------------------------------------------------------------
