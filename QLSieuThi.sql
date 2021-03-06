USE [master]
GO
/****** Object:  Database [BanHangSieuThi]    Script Date: 12/03/2015 21:45:56 ******/
CREATE DATABASE [BanHangSieuThi] ON  PRIMARY 
( NAME = N'BanHangSieuThi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\BanHangSieuThi.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BanHangSieuThi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\BanHangSieuThi_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BanHangSieuThi] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BanHangSieuThi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BanHangSieuThi] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BanHangSieuThi] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BanHangSieuThi] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BanHangSieuThi] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BanHangSieuThi] SET ARITHABORT OFF
GO
ALTER DATABASE [BanHangSieuThi] SET AUTO_CLOSE ON
GO
ALTER DATABASE [BanHangSieuThi] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BanHangSieuThi] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BanHangSieuThi] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BanHangSieuThi] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BanHangSieuThi] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BanHangSieuThi] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BanHangSieuThi] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BanHangSieuThi] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BanHangSieuThi] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BanHangSieuThi] SET  DISABLE_BROKER
GO
ALTER DATABASE [BanHangSieuThi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BanHangSieuThi] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BanHangSieuThi] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BanHangSieuThi] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BanHangSieuThi] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BanHangSieuThi] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BanHangSieuThi] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BanHangSieuThi] SET  READ_WRITE
GO
ALTER DATABASE [BanHangSieuThi] SET RECOVERY FULL
GO
ALTER DATABASE [BanHangSieuThi] SET  MULTI_USER
GO
ALTER DATABASE [BanHangSieuThi] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BanHangSieuThi] SET DB_CHAINING OFF
GO
USE [BanHangSieuThi]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 12/03/2015 21:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieuNhap] [nchar](10) NOT NULL,
	[MaHang] [nchar](10) NULL,
	[ThoiGian] [date] NULL,
	[MaNhanVienPhuTrach] [nchar](10) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaHang], [ThoiGian], [MaNhanVienPhuTrach], [SoLuong]) VALUES (N'1         ', N'MAL       ', CAST(0xBA3A0B00 AS Date), N'1         ', 50)
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/03/2015 21:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[BoPhan] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[luong] [int] NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [username], [pass], [NgaySinh], [BoPhan], [GioiTinh], [luong], [DiaChi]) VALUES (1, N'Nguyen Chi Cong', N'ncc', N'123', CAST(0x941C0B00 AS Date), N'QuanLy', N'Nam', 1000000, N'Ha Giang')
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/03/2015 21:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[TenKhachHang] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[SoCMND] [nvarchar](50) NOT NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[NoiLamViec] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[SoCMND] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KhachHang] ([TenKhachHang], [NgaySinh], [SoCMND], [SoDienThoai], [Email], [NoiLamViec], [DiaChi]) VALUES (N'Le Van Vu', CAST(0xBE1B0B00 AS Date), N'2214345345', N'436454452', NULL, N'Bo doi', N'Ha Nam')
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/03/2015 21:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [nchar](10) NOT NULL,
	[MaKhachHang] [nchar](10) NULL,
	[MaHang] [nchar](10) NULL,
	[SoLuong] [int] NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaHang], [SoLuong], [TongTien]) VALUES (N'1         ', N'1         ', N'1         ', 5, 25000)
/****** Object:  Table [dbo].[Hang]    Script Date: 12/03/2015 21:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang](
	[MaHang] [nchar](10) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[MaNhaSanXuat] [nchar](10) NULL,
	[MaLoaiHang] [nchar](10) NULL,
	[DonGia] [int] NULL,
	[Soluong] [int] NULL,
 CONSTRAINT [PK_Hang] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Hang] ([MaHang], [TenHang], [MaNhaSanXuat], [MaLoaiHang], [DonGia], [Soluong]) VALUES (N'1         ', N'Mi tom', N'Micoen    ', N'MAL       ', 5000, 100)
/****** Object:  StoredProcedure [dbo].[Xoa_NV]    Script Date: 12/03/2015 21:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Xoa_NV] (@ma nvarchar(50))
as
begin
	delete NhanVien where username=@ma
end
GO
/****** Object:  StoredProcedure [dbo].[Xoa_KH]    Script Date: 12/03/2015 21:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Xoa_KH] (@cmnd nvarchar(50))
as
begin
	delete KhachHang where SoCMND=@cmnd
end
GO
/****** Object:  StoredProcedure [dbo].[Them_NV]    Script Date: 12/03/2015 21:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Them_NV] (@ma nvarchar(50),@ten nvarchar(50),@l int, @bp nvarchar(50),@gt nvarchar(50),@ns datetime )
as
begin
	insert into NhanVien(username,HoTen,luong,BoPhan,GioiTinh,NgaySinh) 
	values(@ma,@ten,@l,@bp,@gt,@ns)
end
GO
/****** Object:  StoredProcedure [dbo].[Them_KH]    Script Date: 12/03/2015 21:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Them_KH] (@ten nvarchar(50),@cmnd nvarchar(50),@diachi nvarchar(50),@nlv nvarchar(50), @ns datetime, @sdt nvarchar(50))
as
begin
	insert into KhachHang(TenKhachHang,SoCMND,DiaChi,NoiLamViec,NgaySinh,SoDienThoai) 
	values(@ten,@cmnd,@diachi,@nlv,@ns,@sdt)
end
GO
/****** Object:  StoredProcedure [dbo].[TK_NV_Ten]    Script Date: 12/03/2015 21:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TK_NV_Ten] (@ten nvarchar(50))
as
begin
	select username,hoten,luong,BoPhan,GioiTinh,NgaySinh from NhanVien
	where HoTen=@ten
end
GO
/****** Object:  StoredProcedure [dbo].[TK_NV_Ma]    Script Date: 12/03/2015 21:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
create proc [dbo].[TK_NV_Ma] (@ma nvarchar(50))
as
begin
	select username,hoten,luong,BoPhan,GioiTinh,NgaySinh from NhanVien
	where username=@ma
end
GO
/****** Object:  StoredProcedure [dbo].[TK_KH_Ten]    Script Date: 12/03/2015 21:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
create proc [dbo].[TK_KH_Ten] (@ten nvarchar(50))
as
begin
	select * from KhachHang
	where TenKhachHang=@ten
end
GO
/****** Object:  StoredProcedure [dbo].[TK_KH_Ma]    Script Date: 12/03/2015 21:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TK_KH_Ma] (@cmnd nvarchar(50))
as
begin
	select * from KhachHang
	where SoCMND=@cmnd
end
GO
/****** Object:  StoredProcedure [dbo].[TK_HangMoi]    Script Date: 12/03/2015 21:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TK_HangMoi] (@tg datetime)
as
begin
	select b.MaHang,b.TenHang,b.MaLoaiHang,b.MaLoaiHang,b.DonGia,a.ThoiGian from PhieuNhap a,Hang b 
	where  a.ThoiGian > @tg and b.MaHang=a.MaHang 
end
GO
/****** Object:  StoredProcedure [dbo].[TK_HangGanDay]    Script Date: 12/03/2015 21:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE proc [dbo].[TK_HangGanDay]
as
begin
	select top(10) b.MaHang,b.TenHang,b.MaLoaiHang,b.MaLoaiHang,b.DonGia from HoaDon a,Hang b 
	where  a.MaHang=b.MaHang
	order by  a.mahoadon desc
end
GO
/****** Object:  StoredProcedure [dbo].[TK_HangChay]    Script Date: 12/03/2015 21:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TK_HangChay]
as
begin
	select b.MaHang,b.TenHang,b.MaLoaiHang,b.MaLoaiHang,b.DonGia,(select SUM(SoLuong) from HoaDon where MaHang=b.MaHang)as Tongban from Hang b 
	where  (select SUM(SoLuong) from HoaDon where MaHang=b.MaHang)>50
end
GO
/****** Object:  StoredProcedure [dbo].[TK_HangCham]    Script Date: 12/03/2015 21:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE proc [dbo].[TK_HangCham]
as
begin
	select b.MaHang,b.TenHang,b.MaLoaiHang,b.MaLoaiHang,b.DonGia,(select SUM(SoLuong) from HoaDon where MaHang=b.MaHang)as Tongban from Hang b 
	where  (select SUM(SoLuong) from HoaDon where MaHang=b.MaHang)<10
end
GO
/****** Object:  StoredProcedure [dbo].[Tim_HangXuat]    Script Date: 12/03/2015 21:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Tim_HangXuat](@ma nchar(10))
as
begin
	select MaHoaDon,MaHang,SoLuong,TongTien from HoaDon
end
GO
/****** Object:  StoredProcedure [dbo].[Tim_HangNhap]    Script Date: 12/03/2015 21:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Tim_HangNhap](@ma nchar(10))
as
begin
	select MaPhieuNhap,MaHang,SoLuong,MaNhanVienPhuTrach,ThoiGian from PhieuNhap
end
GO
/****** Object:  StoredProcedure [dbo].[Sua_NV]    Script Date: 12/03/2015 21:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sua_NV] (@ma nvarchar(50),@ten nvarchar(50),@l int, @bp nvarchar(50),@gt nvarchar(50),@ns datetime )
as
begin
	update NhanVien set HoTen=@ten,luong=@l,BoPhan=@bp,GioiTinh=@gt,NgaySinh=@ns
	where username=@ma
end
GO
/****** Object:  StoredProcedure [dbo].[BanHang]    Script Date: 12/03/2015 21:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[BanHang](@ten nvarchar(50),@sl int)
as
begin
	update Hang set Soluong=Soluong-@sl where TenHang=@ten
	declare @ma nchar(10)
	set @ma=((select COUNT(MaHoaDon) from HoaDon)+1 )
	declare @mahang nchar(10)
	set @mahang=(select mahang from Hang where TenHang=@ten)
	declare @tongtien int
	set @tongtien=(select DonGia from Hang where TenHang=@ten)*@sl
	insert into HoaDon(MaHoaDon,MaHang,SoLuong,TongTien)
	values(@ma,@mahang,@sl,@tongtien)
end
GO
