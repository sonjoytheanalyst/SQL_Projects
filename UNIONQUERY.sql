/* Unions, Union All
*/

SELECT *
FROM sqlTutorial.dbo.EmployeeDemo
Union
SELECT *
FROM sqlTutorial.dbo.WarehouseEmployee

SELECT EmployeeID,FirstName,Age
FROM sqlTutorial.dbo.EmployeeDemo
Union
SELECT EmployeeID, JobTitle,Salary
FROM sqlTutorial.dbo.EmployeeSalary
