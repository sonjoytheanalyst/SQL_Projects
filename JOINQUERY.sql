/*
Inner Joins, Full/Left/Right/Outer Joins
*/


--SELECT *
--FROM sqlTutorial.dbo.EmployeeDemo

--SELECT *
--FROM sqlTutorial.dbo.EmployeeSalary

--SELECT * 
--FROM sqlTutorial.dbo.EmployeeDemo
--Inner Join sqlTutorial.dbo.EmployeeSalary
--ON EmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID

--SELECT * 
--FROM sqlTutorial.dbo.EmployeeDemo
--Full Outer Join sqlTutorial.dbo.EmployeeSalary
--ON EmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID


--SELECT * 
--FROM sqlTutorial.dbo.EmployeeDemo
--Left Outer Join sqlTutorial.dbo.EmployeeSalary
--ON EmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID


SELECT EmployeeDemo.EmployeeID,FirstName,LastName,Jobtitle,Salary 
FROM sqlTutorial.dbo.EmployeeDemo
Left outer Join sqlTutorial.dbo.EmployeeSalary
ON EmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Sonjoy'
ORDER BY Salary DESC

