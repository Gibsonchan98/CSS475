-- Use a nested query to: Retrieve the names of all employees (first, and last name) who work in the department that has the employee with the highest salary among all employees.  
-- 	Example format)
-- (first name, last name)

SELECT Fname, Lname 
FROM EMPLOYEE
WHERE dno IN 
(SELECT dno 
FROM EMPLOYEE 
WHERE salary IN 
(SELECT MAX(salary) 
FROM EMPLOYEE));