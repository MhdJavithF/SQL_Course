// Write an SQL query to fetch the names of the customer that are not referred by the customer with id = 102.

SELECT name FROM customer
WHERE referee_id <> 102;
----------------------------------------------------------------------------
// Write an SQL query to report the unique customers with postive revenue in the year 2021.

SELECT DISTINCT customer_id FROM customers
Where revenue > 0 AND year = 2021;
----------------------------------------------------------------------------
// Write a query to calculate the salary of all employees after an increment of 20%. Save the newly calculated salary column as 'New_salary'.

Note:

Return the columns emp_id, name, salary, and 'New_salary'.
Order the output by the emp_id in ascending order.

Steps to calculate the salary increment:

Multiply the current salary by the percentage of the increment.
Divide the result by 100.
Then add the result to the current salary.
Name the column as 'New_Salary'
Round off the 'New_salary'.

SELECT emp_id, name, salary, ROUND(salary + (0.2*salary)) as New_salary FROM employees
ORDER by emp_id;
----------------------------------------------------------------------------
// Write a query to calculate the sub_total for each order, return the details of the orderNumber, productCode, and sub_total.

Note:

Round off the sub_total up to two decimal places.
Order the output by the orderNumber in ascending order and then by sub_total in descending order.

SELECT orderNumber, productCode, Round(quantityOrdered*priceEach,2) as sub_total FROM orderdetails
ORDER by orderNumber ASC, sub_total DESC;
----------------------------------------------------------------------------
// Write a query to display the titles of the movies that are released (i.e., release_year) after 2014 and have an average vote rating (i.e.,vote_average) greater than 7.

Return the column 'original_title'.
Return the result ordered by original_title in ascending order.

SELECT original_title FROM movies
WHERE release_year > 2014 and vote_average > 7
ORDER by original_title ASC;
----------------------------------------------------------------------------
// Write a query to get all the details of all the employees from job_history except for the employee with id 101

Return all the fields.
Return the result ordered by employee_id and job_id in ascending order.

SELECT * FROM job_history
WHERE employee_id <> 101
ORDER by employee_id, job_id;
----------------------------------------------------------------------------
// Write a query to find the details of those employees who work in the departments with numbers included in 30, 40, or 90.

Return the result ordered by employee_id in ascending order.

SELECT employee_id, first_name, job_id, department_id FROM employees
WHERE department_id IN (30,40,90)
ORDER by employee_id;
----------------------------------------------------------------------------
// Write a query to find the employees whose officeCodes are not included in 4,6,7.

Return the result ordered by firstName and lastName in ascending order.

SELECT firstName, lastName, jobTitle FROM employees
WHERE officeCode NOT IN (4,6,7)
ORDER by firstName, lastName;
----------------------------------------------------------------------------
// Display the details of the movies which belong to the 'Horror' genre.

Return the columns 'original_title', and 'popularity'.
Return the result ordered by the popularity in descending order.

SELECT original_title, popularity FROM movies
WHERE genres = 'Horror'
ORDER by popularity DESC;
==============================================================================================================================================================================================================================================================
