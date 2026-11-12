Warehouse_25DH110078 - Nguyễn Đức Huy - MSSV 25DH110078
=========================================================
1. Mở SQL Server Management Studio, chạy file Warehouse_25DH110078.sql (tạo DB + bảng + dữ liệu mẫu).
2. Mở Warehouse_25DH110078.sln bằng Visual Studio 2019/2022 (cần workload ASP.NET, .NET Framework 4.8).
3. Visual Studio tự khôi phục NuGet (EntityFramework 6.4.4, MVC 5.2.9). Nếu không: chuột phải Solution > Restore NuGet Packages.
4. Sửa Web.config:
   - data source=.  -> đổi thành .\SQLEXPRESS hoặc (localdb)\MSSQLLocalDB nếu máy bạn dùng bản đó.
   - NgaySinh -> ghi ngày tháng năm sinh thật (hiển thị ở Footer).
5. Nhấn F5. Trước mỗi test có thể chạy Reset_DuLieuTest.sql để đưa dữ liệu về trạng thái chuẩn.
