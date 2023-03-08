/*
Today's Topic: Temp Tables
*/
-- Use this command when you will run this query once more
--DROP TABLE IF EXISTS #temp_Employee2
CREATE TABLE #temp_Employee (
EmployeeID Int,
JobTitle varchar(100),
Salary int
)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES (
'1001','HR','45000'
)

INSERT INTO #temp_Employee
SELECT *
FROM sqlTutorial..EmployeeSalary

CREATE TABLE #temp_Employee2 (

JobTitle varchar(100),
EmployeePerjob Int,
AvgAge int,
AvgSalary int
)

INSERT INTO #temp_Employee2
SELECT JobTitle, Count(JobTitle),Avg(Age),Avg(salary)
FROM sqlTutorial..EmployeeDemo emp
JOIN sqlTutorial..EmployeeSalary sal
 ON emp.EmployeeID = sal.EmployeeID
 group by JobTitle


 SELECT *
FROM #temp_Employee2