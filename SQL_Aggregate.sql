// Write a SQL query to print department name along with department wise average salary. The average salary should be rounded to 2 decimal places.

SELECT d.deptname AS department_name, round(avg(e.salary),2) AS average_salary 
FROM employee e
JOIN department d 
USING (deptid)
GROUP BY e.deptid;
---------------------------------------------------------------------------------------------------------------------------------
// Write a query to get the details of the average salary of the employees for each department.

Save the new column as 'avg_employee_salary'
Return the result order by avg_employee_salary in descending order and department_id in ascending order.

SELECT department_id, avg(salary) AS avg_employee_salary
FROM employees
GROUP BY department_id
ORDER BY avg_employee_salary DESC, department_id;
---------------------------------------------------------------------------------------------------------------------------------
// Write an SQL query to report all the classes that have at least five students.
Return the result table ordered by class in descending order.

SELECT class
FROM courses
GROUP BY class
HAVING COUNT(student) >= 5 
ORDER BY class DESC;
---------------------------------------------------------------------------------------------------------------------------------
//  Write an SQL query to find the customer_number for the customer who has placed the largest number of orders.

The test cases are generated so that exactly one customer will have placed more orders than any other customer.

SELECT customer_number
FROM Orders
GROUP BY customer_number
order by  count(*) desc
limit 1;
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
