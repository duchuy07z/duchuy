-- Warehouse_25DH110078.sql  |  Nguyễn Đức Huy - 25DH110078
IF DB_ID(N'Warehouse_25DH110078') IS NULL
    CREATE DATABASE Warehouse_25DH110078;
GO
USE Warehouse_25DH110078;
GO
IF OBJECT_ID(N'dbo.Products', N'U') IS NOT NULL DROP TABLE dbo.Products;
GO
CREATE TABLE dbo.Products (
    ProductID   int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    ProductName nvarchar(100)     NOT NULL,
    Category    nvarchar(100)     NOT NULL,
    Price       decimal(18,2)     NOT NULL,
    Quantity    int               NOT NULL
);
GO
INSERT INTO dbo.Products (ProductName, Category, Price, Quantity) VALUES
(N'Laptop Dell Huy',        N'Laptop Huy',    15000000, 10),
(N'Laptop HP Huy',          N'Laptop Huy',    12000000, 4),
(N'Chuột Logitech Huy',     N'Phụ kiện Huy',  250000,   0),
(N'Bàn phím cơ Huy',        N'Phụ kiện Huy',  450000,   0),
(N'Tai nghe Huy',           N'Phụ kiện Huy',  600000,   3),
(N'Màn hình LG Huy',        N'Màn hình Huy',  4500000,  8),
(N'Webcam Huy',             N'Phụ kiện Huy',  350000,   2);
GO
SELECT * FROM dbo.Products;
GO
