/*
Today's Topic: Partition By
*/

SELECT FirstName, LastName, Gender,Salary
, COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
 FROM sqlTutorial..EmployeeDemo as dem
 JOIN sqlTutorial..EmployeeSalary as sal
	on dem.EmployeeID = sal.EmployeeID

SELECT FirstName, LastName, Gender,Salary,COUNT(Gender)
 FROM sqlTutorial..EmployeeDemo as dem
 JOIN sqlTutorial..EmployeeSalary as sal
	on dem.EmployeeID = sal.EmployeeID
	GROUP BY FirstName, LastName, Gender,Salary