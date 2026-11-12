-- Chạy lại trước mỗi test để có dữ liệu đối chiếu (Nguyễn Đức Huy - 25DH110078)
USE Warehouse_25DH110078;
GO
DELETE FROM dbo.Products;
DBCC CHECKIDENT ('dbo.Products', RESEED, 0);
GO
INSERT INTO dbo.Products (ProductName, Category, Price, Quantity) VALUES
(N'Laptop Dell Huy',    N'Laptop Huy',   15000000, 10),  -- 4.1 (tồn 10), 5.x (A=10)
(N'Laptop HP Huy',      N'Laptop Huy',   12000000, 4),   -- 5.x (B=4)
(N'Chuột Logitech Huy', N'Phụ kiện Huy', 250000,   0),   -- 2.2 (xóa được), 2.1 (hết hàng)
(N'Bàn phím cơ Huy',    N'Phụ kiện Huy', 450000,   5),   -- 2.2 (xóa bị chặn), 3.1 (biên 5), 4.4, 4.5
(N'Tai nghe Huy',       N'Phụ kiện Huy', 600000,   3),   -- 2.1 (sắp hết)
(N'Màn hình LG Huy',    N'Màn hình Huy', 4500000,  8),   -- 4.3 (tồn 8)
(N'Webcam Huy',         N'Phụ kiện Huy', 350000,   2);   -- 3.1 (biên 2)
GO
SELECT * FROM dbo.Products;
GO

/* ===== Riêng test 7.2: A=2, B=5, các sản phẩm khác = 0 (bỏ comment rồi chạy) =====
UPDATE dbo.Products SET Quantity = 0;
UPDATE dbo.Products SET Quantity = 2 WHERE ProductName = N'Webcam Huy';
UPDATE dbo.Products SET Quantity = 5 WHERE ProductName = N'Bàn phím cơ Huy';
SELECT * FROM dbo.Products;
*/
