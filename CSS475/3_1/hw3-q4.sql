-- For each department which average employee salary is more than $32,000, retrieve the department name and the number of employees in that department.  
-- 	Example format)
-- (department name, # of employees)

SELECT dname as Department_Name, COUNT(*) as Number_of_Employees
FROM DEPARTMENT, EMPLOYEE
WHERE dno = dnumber 
GROUP BY dname
HAVING AVG(salary) > 32000; 