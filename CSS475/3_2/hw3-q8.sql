-- Use nested query to: Retrieve the names(first, last) of employees who make at least $10,000 more than the employee who is paid the least in the company. 
-- 	Example format)
-- (first name, last name)

SELECT Fname, Lname 
FROM EMPLOYEE
WHERE salary > 10000 + 
(SELECT Min(salary)
FROM EMPLOYEE);