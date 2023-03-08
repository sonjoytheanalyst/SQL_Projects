/* Todays Topic: HAVING CLAUSE*/

SELECT JobTitle,AVG(Salary)
FROM sqlTutorial.dbo.EmployeeDemo
JOIN sqlTutorial.dbo.EmployeeSalary
	ON EmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)





