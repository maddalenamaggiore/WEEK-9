SELECT
*
FROM FactResellerSales;

SELECT
SalesOrderNumber, SalesOrderLineNumber
FROM FactResellerSales;

SELECT 
	SalesOrderLineNumber
	, COUNT(*)				AS NTransaction
	, SUM(SalesAmount)		AS TotalSales
	, SUM(OrderQuantity) 	AS TotalQuantity 
FROM FactResellerSales 
GROUP BY SalesOrderLineNumber
ORDER BY SUM(SalesAmount);

SELECT
EnglishProductName
, COUNT (ProductKey) AS NKey
FROM DimProduct
GROUP BY EnglishProductName
ORDER BY COUNT (ProductKey) DESC;

SELECT
SalesOrderLineNumber,
COUNT(*)				AS NTransaction,
SUM(SalesAmount)		AS TotalSales,
SUM(OrderQuantity) 	AS TotalQuantity,
AVG (SalesAmount)		AS AvgAmount
FROM FactResellerSales
GROUP BY SalesOrderLineNumber
ORDER BY SUM(SalesAmount);

SELECT
OrderQuantity 
FROM FactResellerSales
WHERE OrderQuantity=0;