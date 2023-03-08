/*  Updating/Deleting Data
*/

SELECT *
FROM sqlTutorial.dbo.EmployeeDemo

UPDATE sqlTutorial.dbo.EmployeeDemo
SET EmployeeID = 1008
WHERE FirstName = 'Anil' AND LastName = 'Das'


SELECT *
FROM sqlTutorial.dbo.EmployeeDemo
UPDATE sqlTutorial.dbo.EmployeeDemo
SET Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Anex'

SELECT *
FROM sqlTutorial.dbo.EmployeeDemo
UPDATE sqlTutorial.dbo.EmployeeDemo
SET Age = 31, Gender = 'Female'
WHERE EmployeeID = 1012

DELETE FROM sqlTutorial.dbo.EmployeeDemo
WHERE EmployeeID = 1005


