Use AdventureWorks2017
Go

SELECT * FROM Production.Product
SELECT * FROM Sales.SalesOrderDetail


-- JOIN  WIll Not Show Null Values
SELECT Name, SalesOrderDetailID
FROM Production.Product
JOIN Sales.SalesOrderDetail
ON Product.ProductID=SalesOrderDetail.ProductID

-- LEFT(Outer) JOIN - Will Show Values even if there's nothing on the right side
SELECT Name, SalesOrderDetailID
FROM Production.Product as P
LEFT JOIN Sales.SalesOrderDetail as S
ON P.ProductID=S.ProductID
-- WHERE SalesOrderDetailID is Null 

-- Right(Outer) JOIN
SELECT Name, SalesOrderDetailID
FROM Production.Product as P
RIGHT JOIN Sales.SalesOrderDetail as S
ON P.ProductID=S.ProductID

