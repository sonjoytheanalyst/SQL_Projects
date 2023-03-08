/* WHERE STATEMENT
  *,<>,<,>,AND,OR,Like,Null,Not Null,In
	*/

--SELECT *
--FROM EmployeeDemo
--WHERE FirstName = 'sonjoy'

--SELECT *
--FROM EmployeeDemo
--WHERE Age <= 32 AND Gender='Male'

--SELECT *
--FROM EmployeeDemo
--WHERE Age >= 52 OR Gender='Male'

--SELECT *
--FROM EmployeeDemo
--WHERE FirstName LIKE 's%'

--SELECT *
----FROM EmployeeDemo
----WHERE FirstName LIKE '%s%'

--SELECT *
--FROM EmployeeDemo
--WHERE FirstName LIKE 's%o%'


--SELECT *
--FROM EmployeeDemo
--WHERE FirstName is NOT NULL

SELECT *
FROM EmployeeDemo
WHERE FirstName IN('SOnjoy','Swarna')




