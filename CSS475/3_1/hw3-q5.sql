-- For each project, retrieve the project name, controlling department name, the number of employees and total hours worked per week on the project. 
-- 	Example format)
-- (project name, department name, # of employees, hours)


SELECT pname as Project_Name, dname as Department_Name, COUNT (*) as Number_of_Employees, sum(hours) as Weekly_Hours
FROM WORKS_ON, PROJECT, EMPLOYEE, DEPARTMENT 
WHERE essn = Ssn AND pno = pnumber AND dnum = dnumber
GROUP BY pname; 

