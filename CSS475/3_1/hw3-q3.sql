-- List the department name and the number of employees in that department who are making more than $32,000.   
-- 	Example format)
-- (department name, # of employees)

SELECT dname as Department_Name, COUNT(*) as Number_of_Employees
FROM DEPARTMENT, EMPLOYEE
WHERE dno = dnumber AND salary > 32000
Group by dname;