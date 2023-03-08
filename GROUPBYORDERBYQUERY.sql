/* Group By, Order By
 */


 SELECT *
FROM EmployeeDemo



SELECT GENDER, COUNT(Gender)
FROM EmployeeDemo
GROUP BY Gender

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemo
GROUP BY Gender,Age

SELECT Gender,  COUNT(Gender)
FROM EmployeeDemo
WHERE Age > 45
GROUP BY Gender,Age

SELECT Gender,  COUNT(Gender) AS CountGender
FROM EmployeeDemo
WHERE Age > 45
GROUP BY Gender
ORDER BY CountGender


SELECT Gender,  COUNT(Gender) AS CountGender
FROM EmployeeDemo
WHERE Age > 45
GROUP BY Gender
ORDER BY Gender DESC


SELECT *
FROM EmployeeDemo
WHERE Age > 45
ORDER BY 4 desc, 5 desc

