SELECT
ProductKey, ProductAlternateKey ,EnglishProductName, FinishedGoodsFlag
FROM [dbo].[DimProduct]
WHERE
FinishedGoodsFlag = 1;

SELECT
ProductKey, ProductAlternateKey ,EnglishProductName, FinishedGoodsFlag
FROM [dbo].[DimProduct]
WHERE
FinishedGoodsFlag = 1 and ProductAlternateKey like 'FR%';

SELECT
*
FROM DimReseller;

SELECT
ResellerKey, BusinessType, ResellerName
FROM DimReseller;

SELECT
ResellerKey, BusinessType, ResellerName
FROM DimReseller
WHERE BusinessType like 'Specialty Bike Shop';

SELECT
*
FROM DimEmployee;

SELECT
EmployeeKey, FirstName, LastName, Title
FROM DimEmployee
WHERE SalespersonFlag = 1;

SELECT DISTINCT
SalesOrderNumber, SalesOrderLineNumber, ProductKey, OrderDate
FROM FactResellerSales;

SELECT DISTINCT
SalesOrderNumber, OrderDate
FROM FactResellerSales;

SELECT
SalesOrderNumber, SalesOrderLineNumber, ProductKey, ResellerKey, OrderDate, SalesAmount, UnitPrice, OrderQuantity
FROM FactResellerSales;

SELECT
SalesOrderNumber, SalesOrderLineNumber, ProductKey, ResellerKey, OrderDate, SalesAmount, UnitPrice, OrderQuantity
FROM FactResellerSales
WHERE OrderQuantity > 6;

SELECT
SalesOrderNumber, SalesOrderLineNumber, ProductKey, ResellerKey, OrderDate, SalesAmount, UnitPrice, OrderQuantity
FROM FactResellerSales
WHERE OrderDate BETWEEN '2017-07-01' AND '2019-08-13';

SELECT
SalesOrderNumber, SalesOrderLineNumber, ProductKey, ResellerKey, OrderDate, SalesAmount, UnitPrice, OrderQuantity
FROM FactResellerSales
WHERE OrderDate BETWEEN '2017-07-01' AND '2019-08-13' AND ProductKey = 534 OR ProductKey = 491 OR ProductKey = 512;
