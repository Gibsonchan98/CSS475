-- Retrieve the employee first name and last name, salary, and supervisor first name and last name for each employee who works in the ‘Research’ department. 
-- 	Example format)
-- (employee first name, employee last name, salary, supervisor first name supervisor last name)

SELECT E.Fname as E_Fname, E.Lname as E_Lname, E.salary as E_salary, S.Fname as S_Fname, S.Lname as S_Lname
FROM EMPLOYEE as E, EMPLOYEE as S, DEPARTMENT
WHERE dname = 'Research' AND dnumber = E.dno AND E.super_ssn = S.Ssn; 