-- Initial schema for the database using MSQL Server.    26/02/2024:
-- We assume a database with the ESHOPDB name exists. If not, we create it.
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'EShopDB')
BEGIN
    CREATE DATABASE EShopDB;
END
GO

USE EShopDB;
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name='Products' AND type = 'U')
BEGIN
    CREATE TABLE Products (
        Id INT PRIMARY KEY,
        Name VARCHAR(255),
        Price DECIMAL(18, 2)
    );
END
GO
