Use Company
Go

SELECT * FROM tableEmployees

SELECT * FROM tableDepartments

SELECT * FROM tableEmployees, tableDepartments

SELECT EmployeeID, EmployeeName, DepartmentName
FROM tableEmployees, tableDepartments

SELECT EmployeeID, EmployeeName, DepartmentName
FROM tableEmployees
JOIN tableDepartments
ON tableEmployees.DepID=tableDepartments.DepID

Use AdventureWorks2017
Go

SELECT FirstName, LastName, EmailAddress
FROM Person.Person
JOIN Person.EmailAddress
ON Person.BusinessEntityID=EmailAddress.BusinessEntityID