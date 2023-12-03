// Write a query to display the details of all those departments that don't have any working employees.

Return the columns 'department_id', and 'department_name'.
Return the results ordered by 'department_id' in ascending order.

SELECT d.department_id, d.department_name
FROM employees e
RIGHT JOIN departments d
USING (department_id)
WHERE e.department_id IS NULL
ORDER BY d.department_id, d.department_name;
---------------------------------------------------------------------------------------------------------
// Write a query to find the employee_id of the employees whose salary is strictly less than $15000 and whose manager left the company.
When a manager leaves the company, their information is deleted from the employees table, but the reports still have their manager_id set to the manager that left.
Note: Return the result ordered by employee_id in ascending order.

SELECT e.employee_id FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.employee_id
WHERE e.manager_id IS NOT NULL
AND m.employee_id IS NULL
AND e.salary < 15000
ORDER BY e.employee_id;
---------------------------------------------------------------------------------------------------------
//  Write a SQL query to find the employee details who handles no customers.

Note:

Use the given customers table.
Return the output ordered by employeeNumber in ascending order.
The salesRepEmployeeNumber column to the employeeNumber who made sales to the customers.

SELECT DISTINCT e.employeeNumber, e.firstName, e.lastName
FROM customers c
RIGHT JOIN employees e
ON c.salesRepEmployeeNumber = e.employeeNumber
WHERE c.salesRepEmployeeNumber IS NULL
ORDER BY e.employeeNumber;
---------------------------------------------------------------------------------------------------------
// Write a SQL query to get all the possible combinations of employees and offices.

Return the output ordered by employeeNumber and officeCode in ascending order.

SELECT e.employeeNumber, e.firstName, e.lastName, o.officeCode, o.city
FROM offices o
CROSS JOIN employees e
ORDER BY e.employeeNumber,o.officeCode;
---------------------------------------------------------------------------------------------------------
// Write an SQL query to report the city of each person in the Person table. If the address of a personId is not present in the Address table, report null instead.

Return the result table in order of city names.

SELECT a.city
FROM person p
LEFT JOIN address a
USING (personID)
ORDER BY a.city;
---------------------------------------------------------------------------------------------------------
// Write a query to find the npv of each query of the queries table.

Return the output order by id and year in the ascending order

SELECT q.id, q.year, IFNULL(n.npv,0) as npv
FROM npv n
RIGHT JOIN queries q
ON n.id = q.id
AND q.year = n.year
ORDER BY q.id, q.year;
---------------------------------------------------------------------------------------------------------
