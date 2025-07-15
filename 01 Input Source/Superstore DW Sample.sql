--Create Database
CREATE DATABASE SuperstoreETL;
GO
USE SuperstoreETL;

--Create table Order Staging
CREATE TABLE Orders_Staging (
	[Row ID] INT,
    [Order ID] VARCHAR(100),
    [Order Date] DATE,
    [Ship Date] DATE,
    [Ship Mode] VARCHAR(100),
    [Customer ID] VARCHAR(100),
    [Customer Name] VARCHAR(100),
    [Segment] VARCHAR(100),
    [Country] VARCHAR(100),
    [City] VARCHAR(100),
    [State] VARCHAR(100),
    [Postal Code] VARCHAR(100),
    [Region] VARCHAR(100),
    [Product ID] VARCHAR(100),
    [Category] VARCHAR(100),
    [Sub-Category] VARCHAR(100),
    [Product Name] VARCHAR(255),
    [Sales] DECIMAL(10,2),
    [Quantity] INT,
    [Discount] DECIMAL(5,2),
    [Profit] DECIMAL(10,2)
);

-- Customer Dimension
CREATE TABLE Dim_Customer (
    CustomerKey INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID VARCHAR(100),
    CustomerName VARCHAR(100),
    Segment VARCHAR(100)
);

-- Product Dimension
CREATE TABLE Dim_Product (
    ProductKey INT IDENTITY(1,1) PRIMARY KEY,
    ProductID VARCHAR(100),
    ProductName VARCHAR(255),
    Category VARCHAR(100),
    SubCategory VARCHAR(100)
);

-- Region Dimension
CREATE TABLE Dim_Region (
    RegionKey INT IDENTITY(1,1) PRIMARY KEY,
    Country VARCHAR(100),
    City VARCHAR(100),
    State VARCHAR(100),
    PostalCode VARCHAR(100),
    Region VARCHAR(100)
);

-- Date Dimension (simplified, from Order Date)
CREATE TABLE Dim_Date (
    DateKey INT PRIMARY KEY,
    FullDate DATE,
    Year INT,
    Month INT,
    Day INT
);

-- Fact Table
CREATE TABLE Fact_Sales (
    SalesKey INT IDENTITY(1,1) PRIMARY KEY,
    OrderID VARCHAR(100),
    OrderDateKey INT,
    CustomerKey INT,
    ProductKey INT,
    RegionKey INT,
    Sales DECIMAL(18,2),
    Quantity INT,
    Discount DECIMAL(5,2),
    Profit DECIMAL(10,2)
);
