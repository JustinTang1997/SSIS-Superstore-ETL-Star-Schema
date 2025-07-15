USE SuperstoreETL;

SELECT DISTINCT *
FROM Orders_Staging
WHERE [Customer ID] = 'AB-10060';




SELECT * FROM Fact_Sales
WHERE CustomerKey = 6;

SELECT * FROM Dim_Customer
WHERE CustomerKey = 6;




SELECT * FROM Dim_Date
WHERE FullDate = '2016-01-09';


SELECT * FROM Dim_Customer as DC
LEFT JOIN Fact_Sales as FS
ON DC.CustomerKey = FS.CustomerKey
LEFT JOIN Dim_Date as DD
ON DD.DateKey = FS.OrderDateKey;