Use AdventureWorks2017
Go

--FULL(Outer) Join
SELECT Name, SalesOrderDetailID
FROM Production.Product as P
FULL JOIN Sales.SalesOrderDetail as S
ON P.ProductID=S.ProductID


--SELF JOIN
-- Finds Products with the same list price
SELECT P1.Name, P2.Name, P1.ListPrice
FROM Production.Product P1
JOIN Production.Product P2
ON P1.ListPrice=P2.ListPrice
	AND P1.ListPrice <> 0		-- Exclude Products with no price
	AND P1.Name <> P2.Name		-- Exclude the same product
ORDER BY ListPrice


-- SELF JOIN WITH ALIAS
SELECT P1.Name, P2.Name, P1.ListPrice
FROM Production.Product as P1, Production.Product as P2
WHERE P1.ListPrice=P2.ListPrice
	AND P1.ListPrice <> 0
	AND P1.Name <> P2.Name
ORDER BY ListPrice