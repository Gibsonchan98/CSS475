-- Use nested query to: Retrieve the names(first, last) of all employees whose supervisor’s supervisor has '888665555' for Ssn. 
-- 	Example format)
-- (first name, last name)

SELECT Fname, Lname 
FROM EMPLOYEE
WHERE super_ssn IN 
(SELECT Ssn
FROM EMPLOYEE
WHERE Ssn = '888665555');