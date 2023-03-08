
-- CASE STATEMENT
--SELECT EmployeeID,FirstName,Age,
--CASE
--	WHEN Age Between 30 AND  45 THEN 'Middle Age'
--	WHEN Age Between 50 AND 70 THEN 'OLDER'
--	ELSE 'Young'
--END As Young

--FROM sqlTutorial.dbo.EmployeeDemo
--WHERE Age is not Null
--ORDER BY Age 




SELECT FirstName, LastName,Jobtitle,Salary,
CASE
   WHEN Jobtitle ='Salesman' THEN Salary + (Salary * .10)
   WHEN Jobtitle ='Accountant' THEN Salary + (Salary * .05)
   WHEN Jobtitle ='HR' THEN Salary + (Salary * .000001)
   ELSE Salary + (Salary * .03)
   END AS SalaryAfterRaise

FROM sqlTutorial.dbo.EmployeeDemo
Join sqlTutorial.dbo.EmployeeSalary
ON EmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID