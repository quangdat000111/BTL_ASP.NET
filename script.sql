USE [master]
GO
/****** Object:  Database [BanHang]    Script Date: 17/06/2021 9:12:54 SA ******/
CREATE DATABASE [BanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BanHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

USE [BanHang]
GO
/****** Object:  Table [dbo].[ChitietHoaDon]    Script Date: 17/06/2021 9:12:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietHoaDon](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuongDat] [int] NOT NULL,
	[ThanhTien] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPN]    Script Date: 17/06/2021 9:12:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPN](
	[MaPN] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuongNhap] [int] NOT NULL,
	[DonGiaNhap] [money] NOT NULL,
	[TongTienNhap] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucSP]    Script Date: 17/06/2021 9:12:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSP](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 17/06/2021 9:12:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[ChietKhau] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 17/06/2021 9:12:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[DiaChiKH] [nvarchar](100) NOT NULL,
	[SDTKH] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 17/06/2021 9:12:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](100) NOT NULL,
	[SDTNCC] [nvarchar](50) NOT NULL,
	[DiaChiNCC] [nvarchar](100) NOT NULL,
	[EmailNCC] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 17/06/2021 9:12:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[MaNCC] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 17/06/2021 9:12:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaDM] [int] NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[ThuongHieu] [nvarchar](100) NOT NULL,
	[NoiSanXuat] [nvarchar](100) NOT NULL,
	[MauSac] [nvarchar](100) NOT NULL,
	[KichThuoc] [nvarchar](100) NULL,
	[ChatLieu] [nvarchar](100) NULL,
	[KieuDang] [nvarchar](100) NULL,
	[BaoHanh] [nvarchar](100) NOT NULL,
	[HinhAnh] [nvarchar](100) NULL,
	[SLCon] [int] NOT NULL,
	[Combo] [nvarchar](100) NULL,
	[DonGia] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DanhMucSP] ON 

INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (1, N'Túi xách nam')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (2, N'Túi xách nữ')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (3, N'Túi xách thời trang')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (4, N'Túi xách da thật')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (5, N'Clutch nam')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (6, N'Clutch nữ')
SET IDENTITY_INSERT [dbo].[DanhMucSP] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (1, 1, N'TÚI XÁCH NAM DA THẬT ELLY HOMME – ETM8', N'ELLY HOMME', N'Gia công tại Trung Quốc theo thiết kế và tiêu chuẩn chất lượng của thương hiệu ELLY', N'Đen', N'20 x 13,5 cm (Chiều ngang x chiều dọc).', N'Da thật cao cấp nhập khẩu.', N'Túi đeo chéo.', N'06 tháng (với lỗi do sản xuất)', N'sp1.jpg', 100, NULL, 1600000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (2, 1, N'TÚI XÁCH NAM DA THẬT ELLY HOMME – ETM10', N'ELLY HOMME', N'Gia công tại Trung Quốc theo thiết kế và tiêu chuẩn chất lượng của thương hiệu ELLY', N'Đen', N'12,5 x 22 x 5 cm (Chiều ngang x chiều dọc x độ dày).', N'Da thật cao cấp nhập khẩu.', N'Túi đeo chéo.', N'06 tháng (với lỗi do sản xuất)', N'sp2.jpg', 200, NULL, 1749000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (3, 1, N'TÚI XÁCH NAM DA THẬT ELLY HOMME – ETM11', N'ELLY HOMME', N'Gia công tại Trung Quốc theo thiết kế và tiêu chuẩn chất lượng của thương hiệu ELLY', N'Đen', N'19 x 31cm (Chiều ngang x chiều dọc).', N'Da thật cao cấp nhập khẩu.', N'Túi đeo chéo thân.
', N'06 tháng (với lỗi do sản xuất)', N'sp3.jpg', 300, NULL, 1889000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (4, 1, N'
TÚI XÁCH NAM DA THẬT ELLY HOMME – ETM4', N'ELLY HOMME', N'Gia công tại Trung Quốc theo thiết kế và tiêu chuẩn chất lượng của thương hiệu ELLY', N'Đen', N'28 x 32 x 8 cm (Chiều ngang x chiều dọc x độ dày).', N'Da thật cao cấp nhập khẩu.', N'Túi xách tay.', N'06 tháng (với lỗi do sản xuất)', N'sp4.jpg', 50, NULL, 2239000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (5, 1, N'TÚI XÁCH NAM DA THẬT ELLY HOMME – ETM5', N'ELLY HOMME', N'Gia công tại Trung Quốc theo thiết kế và tiêu chuẩn chất lượng của thương hiệu ELLY', N'Đen', N'20 x 25 x 8 cm (Chiều ngang x chiều dọc x độ dày).', N'Da thật cao cấp nhập khẩu.', N'Túi đeo chéo.', N'06 tháng (với lỗi do sản xuất)', N'sp5.jpg', 150, NULL, 2029000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (6, 2, N'TÚI XÁCH NỮ THỜI TRANG CAO CẤP ELLY – EL98', N'ELLY', N'Việt Nam; Trung Quốc (theo thiết kế và tiêu chuẩn chất lượng của thương hiệu ELLY).', N'Xanh', N'18 x 18 x 8 cm (chiều ngang x chiều dọc x độ dày).', N'Da tổng hợp cao cấp nhập khẩu bóng đẹp,', NULL, N'03 tháng (với lỗi do sản xuất).', N'sp6.jpg', 10, NULL, 784000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (7, 2, N'TÚI XÁCH NỮ THỜI TRANG CAO CẤP ELLY – EL95', N'ELLY', N'Việt Nam; Trung Quốc (theo thiết kế và tiêu chuẩn chất lượng của thương hiệu ELLY).', N'Đỏ, đen', N'23 x 14 x 8 cm (chiều ngang x chiều dọc x độ dày).', N'Da tổng hợp cao cấp nhập khẩu bóng đẹp,', NULL, N'03 tháng (với lỗi do sản xuất).', N'sp7.jpg', 20, NULL, 570000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (8, 2, N'TÚI XÁCH NỮ THỜI TRANG CAO CẤP ELLY – EL47', N'ELLY', N'Việt Nam.', N'Đen, trắng', N'18 x 13 x 8 cm (chiều ngang x chiều dọc x độ dày).', N'Da tổng hợp cao cấp nhập khẩu bóng đẹp,', NULL, N'03 tháng (với lỗi do sản xuất).', N'sp8.jpg', 30, NULL, 605000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (9, 2, N'TÚI XÁCH NỮ THỜI TRANG CAO CẤP ELLY – EL85', N'ELLY', N'Việt Nam; Trung Quốc (theo thiết kế và tiêu chuẩn chất lượng của thương hiệu ELLY).', N'Đen, ghi', N'21 x 18 x 11 cm (chiều ngang x chiều dọc x độ dày).', N'Da tổng hợp cao cấp nhập khẩu bóng đẹp,', NULL, N'03 tháng (với lỗi do sản xuất).', N'sp9.jpg', 40, NULL, 795000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (10, 2, N'TÚI XÁCH NỮ THỜI TRANG CAO CẤP ELLY- EL129', N'ELLY', N'Việt Nam.', N'Đỏ, nude, đen', N'21 x 15 x 7 cm (Chiều ngang x chiều dọc x độ dày).', N'Da tổng hợp cao cấp.', N'Crossbody bag.', N'03 tháng (với lỗi do sản xuất).', N'sp10.jpg', 50, NULL, 945000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (11, 3, N'TÚI XÁCH NỮ THỜI TRANG CAO CẤP ELLY- EL165
', N'ELLY', N'Gia công tại Trung Quốc theo thiết kế và tiêu chuẩn chất lượng của thương hiệu ELLY', N'Xanh, nude', N'19 x 12 x 4,5 cm (Chiều ngang x chiều dọc x độ dày).', N'Da tổng hợp cao cấp.', N'Crossbody bag.', N'03 tháng (với lỗi do sản xuất).', N'sp11.jpg', 60, NULL, 600000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (12, 3, N'TÚI XÁCH NỮ THỜI TRANG CAO CẤP ELLY – EL143
', N'ELLY', N'Gia công tại Trung Quốc theo thiết kế và tiêu chuẩn chất lượng của thương hiệu ELLY', N'Đen, nude', N'14 x 16 x 8 cm (Chiều ngang x chiều dọc x độ dày).', N'Da tổng hợp cao cấp.', N'Crossbody bag.', N'03 tháng (với lỗi do sản xuất).', N'sp12.jpg', 70, NULL, 719000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (13, 3, N'TÚI XÁCH NỮ THỜI TRANG CAO CẤP ELLY- EL148
', N'ELLY', N'Gia công tại Trung Quốc theo thiết kế và tiêu chuẩn chất lượng của thương hiệu ELLY', N'Đen', N'18 x 14,5 x 6,5 cm (Chiều ngang x chiều dọc x độ dày).', N'Da tổng hợp cao cấp.', N'Saddle bag.', N'03 tháng (với lỗi do sản xuất).', N'sp13.jpg', 80, NULL, 719000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (14, 3, N'TÚI XÁCH NỮ THỜI TRANG CAO CẤP ELLY- EL162
', N'ELLY', N'Gia công tại Trung Quốc theo thiết kế và tiêu chuẩn chất lượng của thương hiệu ELLY', N'Hồng', N'17,5 x 15 x 8 cm (Chiều ngang x chiều dọc x độ dày).', N'Da tổng hợp cao cấp.', N'Handheld bag.', N'03 tháng (với lỗi do sản xuất).', N'sp14.jpg', 90, NULL, 779000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (15, 4, N'BALO NỮ CAO CẤP DA THẬT ELLY – EB28
', N'ELLY', N'Việt Nam, Trung Quốc', N'Đen', N'23 x 32 x 8cm (Chiều ngang x chiều dọc x độ dày).', N'Da thật cao cấp', N'Balo', N'06 tháng (với lỗi do sản xuất)', N'sp15.jpg', 100, NULL, 1350000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (16, 4, N'TÚI XÁCH NAM DA THẬT ELLY HOMME – ETM12
', N'ELLY HOMME', N'Gia công tại Trung Quốc theo thiết kế và tiêu chuẩn chất lượng của thương hiệu ELLY', N'Đen', N'37 x 27,3 x 10 cm (Chiều ngang x chiều dọc x độ dày).', N'Da thật cao cấp nhập khẩu.', N'Túi xách tay/đeo chéo', N'06 tháng (với lỗi do sản xuất)', N'sp16.jpg', 110, NULL, 2600000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (17, 4, N'TÚI XÁCH NỮ CAO CẤP DA THẬT ELLY – ET120
', N'ELLY', N'Gia công tại Trung Quốc theo thiết kế và tiêu chuẩn chất lượng của thương hiệu ELLY', N'Đen, hồng', N'20 x 14 x 9 cm (Chiều ngang x chiều dọc x độ dày).', N'Da thật cao cấp nhập khẩu', N'Crossbody bag.', N'06 tháng (với lỗi do sản xuất)', N'sp17.jpg', 120, NULL, 1559000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (18, 5, N'TÚI CLUTCH NAM DA THẬT ELLY HOMME – ECM9
', N'ELLY HOMME', N'Việt Nam', N'Nâu, xám', N'21 x 13.5 x 3.5cm (Chiều ngang x chiều dọc).', N'Da thật cao cấp nhập khẩu', N'Clutch cầm tay.', N'06 tháng (với lỗi do sản xuất)', N'sp18.jpg', 130, NULL, 1000000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (19, 5, N'TÚI CLUTCH NAM DA THẬT ELLY HOMME – ECM1
', N'ELLY HOMME', N'Gia công tại Trung Quốc theo thiết kế và tiêu chuẩn chất lượng của thương hiệu ELLY', N'Đen', N'26 x 17 x 0,5 cm (Chiều ngang x chiều dọc x độ dày).', N'Da thật cao cấp nhập khẩu', N'Clutch cầm tay.', N'06 tháng (với lỗi do sản xuất)', N'sp19.jpg', 130, NULL, 1259000.0000)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [ThuongHieu], [NoiSanXuat], [MauSac], [KichThuoc], [ChatLieu], [KieuDang], [BaoHanh], [HinhAnh], [SLCon], [Combo], [DonGia]) VALUES (20, 5, N'TÚI CLUTCH NAM DA THẬT ELLY HOMME – ECM6
', N'ELLY HOMME', N'Gia công tại Trung Quốc theo thiết kế và tiêu chuẩn chất lượng của thương hiệu ELLY', N'Đen', N'21 x 13 cm (Chiều ngang x chiều dọc).', N'Da thật cao cấp nhập khẩu', N'Clutch cầm tay.', N'06 tháng (với lỗi do sản xuất)', N'sp20.jpg', 140, NULL, 1539000.0000)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
ALTER TABLE [dbo].[ChitietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChitietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChitietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChitietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPN]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPN]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPN]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPN]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMucSP] ([MaDM])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMucSP] ([MaDM])
GO
USE [master]
GO
ALTER DATABASE [BanHang] SET  READ_WRITE 
GO
