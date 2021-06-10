-- Retrieve the first and last name of all employees in Administration department who work less than 20 hours per week on the 'Computerization' project.    
-- NOTE:  it must also include any manager also working on project ‘Compuerization project’, even if the manager is not on Administration department
-- Example format)
-- (first name, last name, hours)

SELECT DISTINCT E.Fname AS FirstName, E.Lname AS LastName, hours AS Hours
FROM EMPLOYEE E, EMPLOYEE S, WORKS_ON W, PROJECT P, DEPARTMENT D
WHERE (E.Ssn = W.essn AND W.hours < 20 AND  W.pno = P.pnumber 
AND pname = 'Computerization' AND E.dno = D.dnumber AND D.dname = 'Administration') 
OR (E.Ssn = S.super_ssn AND E.Ssn = W.essn AND W.hours < 20 AND  W.pno = P.pnumber 
AND pname = 'Computerization'); 