USE [master]
GO
/****** Object:  Database [QuanLyNganHang]    Script Date: 4/23/2023 3:17:26 AM ******/
CREATE DATABASE [QuanLyNganHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyNganHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuanLyNganHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyNganHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuanLyNganHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLyNganHang] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyNganHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyNganHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyNganHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyNganHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyNganHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyNganHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyNganHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyNganHang] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyNganHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyNganHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyNganHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyNganHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyNganHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyNganHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyNganHang] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuanLyNganHang] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuanLyNganHang]
GO
/****** Object:  Table [dbo].[HOPDONGVAY]    Script Date: 4/23/2023 3:17:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOPDONGVAY](
	[SoHD] [varchar](50) NOT NULL,
	[LoaiHD] [nvarchar](100) NULL,
	[MaLoaiVay] [varchar](50) NULL,
	[SoTienVay] [float] NULL,
	[NgayKy] [smalldatetime] NULL,
	[NgayHetHan] [smalldatetime] NULL,
	[MaNV] [varchar](50) NULL,
	[MaKH] [varchar](50) NULL,
	[TienLai] [float] NULL,
 CONSTRAINT [PK__HOPDONGV__BC3CAB578D4446E7] PRIMARY KEY CLUSTERED 
(
	[SoHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 4/23/2023 3:17:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [varchar](50) NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[DiachiKH] [nvarchar](100) NULL,
	[Nghenghiep] [nvarchar](100) NULL,
	[NgaySinh] [smalldatetime] NULL,
	[SDT] [int] NULL,
 CONSTRAINT [PK__KHACHHAN__2725CF1E2B2619CE] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIVAY]    Script Date: 4/23/2023 3:17:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIVAY](
	[MaLoaiVay] [varchar](50) NOT NULL,
	[TenLoaiVay] [nvarchar](100) NULL,
	[NgayDieuChinh] [smalldatetime] NULL,
	[LaiSuat] [float] NULL,
 CONSTRAINT [PK_LOAIVAY] PRIMARY KEY CLUSTERED 
(
	[MaLoaiVay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 4/23/2023 3:17:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [varchar](50) NOT NULL,
	[TenNV] [nvarchar](100) NULL,
	[DiachiNV] [nvarchar](100) NULL,
	[ChucVu] [nvarchar](100) NULL,
	[NgaySinh] [smalldatetime] NULL,
	[SDT] [int] NULL,
 CONSTRAINT [PK__NHANVIEN__2725D70A9E243369] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOTHEODOI]    Script Date: 4/23/2023 3:17:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOTHEODOI](
	[MaSo] [varchar](50) NOT NULL,
	[SoHD] [varchar](50) NULL,
	[TienGoc] [float] NULL,
	[TienLai] [float] NULL,
	[NgayGD] [smalldatetime] NULL,
	[TienGD] [float] NULL,
	[TienNo] [float] NULL,
 CONSTRAINT [PK__SOTHEODO__2725087DD24A5655] PRIMARY KEY CLUSTERED 
(
	[MaSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HOPDONGVAY] ([SoHD], [LoaiHD], [MaLoaiVay], [SoTienVay], [NgayKy], [NgayHetHan], [MaNV], [MaKH], [TienLai]) VALUES (N'HD01', N'Hợp đồng thế chấp', N'V001', 10000000, CAST(N'2023-04-21T00:00:00' AS SmallDateTime), CAST(N'2024-04-21T00:00:00' AS SmallDateTime), N'TV01', N'KH01', 1000000)
INSERT [dbo].[HOPDONGVAY] ([SoHD], [LoaiHD], [MaLoaiVay], [SoTienVay], [NgayKy], [NgayHetHan], [MaNV], [MaKH], [TienLai]) VALUES (N'HD02', N'Hợp Đồng Cho Vay', N'V002', 85000000, CAST(N'2023-04-23T00:00:00' AS SmallDateTime), CAST(N'2024-04-23T00:00:00' AS SmallDateTime), N'TP01', N'KH03', 9520000)
INSERT [dbo].[HOPDONGVAY] ([SoHD], [LoaiHD], [MaLoaiVay], [SoTienVay], [NgayKy], [NgayHetHan], [MaNV], [MaKH], [TienLai]) VALUES (N'HD03', N'Hợp Đồng Cho Vay', N'V003', 67800000, CAST(N'2023-04-21T00:00:00' AS SmallDateTime), CAST(N'2023-04-21T00:00:00' AS SmallDateTime), N'TP01', N'KH04', 4339200)
GO
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiachiKH], [Nghenghiep], [NgaySinh], [SDT]) VALUES (N'KH01', N'Lương Văn Thành', N'Hưng Yên', N'Nhân Viên Văn Phòng', CAST(N'2002-06-07T00:00:00' AS SmallDateTime), 385981367)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiachiKH], [Nghenghiep], [NgaySinh], [SDT]) VALUES (N'KH02', N'Hoàng Hà Bảo Toàn', N'Hà Nội', N'Trưởng phòng kinh doanh', CAST(N'2000-07-14T00:00:00' AS SmallDateTime), 398561230)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiachiKH], [Nghenghiep], [NgaySinh], [SDT]) VALUES (N'KH03', N'Tạ Minh Thảo', N'Hà Nội', N'Lao động tự do', CAST(N'1999-05-12T00:00:00' AS SmallDateTime), 658532671)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiachiKH], [Nghenghiep], [NgaySinh], [SDT]) VALUES (N'KH04', N'Nguyễn Ngọc Minh', N'Bắc Giang', N'Lao động tự do', CAST(N'2002-05-24T00:00:00' AS SmallDateTime), 832235581)
GO
INSERT [dbo].[LOAIVAY] ([MaLoaiVay], [TenLoaiVay], [NgayDieuChinh], [LaiSuat]) VALUES (N'V001', N'Vay thế chấp', CAST(N'2000-08-09T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[LOAIVAY] ([MaLoaiVay], [TenLoaiVay], [NgayDieuChinh], [LaiSuat]) VALUES (N'V002', N'Vay nặng lãi', CAST(N'1999-12-08T00:00:00' AS SmallDateTime), 11.2)
INSERT [dbo].[LOAIVAY] ([MaLoaiVay], [TenLoaiVay], [NgayDieuChinh], [LaiSuat]) VALUES (N'V003', N'Vay tiết kiệm', CAST(N'2023-04-23T00:00:00' AS SmallDateTime), 6.4)
INSERT [dbo].[LOAIVAY] ([MaLoaiVay], [TenLoaiVay], [NgayDieuChinh], [LaiSuat]) VALUES (N'V004', N'Vay nặng lãi', CAST(N'2000-04-19T00:00:00' AS SmallDateTime), 15.8)
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiachiNV], [ChucVu], [NgaySinh], [SDT]) VALUES (N'GD01', N'Trần Phạm Thế', N'Bắc Ninh', N'Giám Đốc', CAST(N'1993-05-08T00:00:00' AS SmallDateTime), 356119416)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiachiNV], [ChucVu], [NgaySinh], [SDT]) VALUES (N'KT01', N'Lộc Thị Mai', N'Bắc Giang', N'Nhân Viên Kiểm Toán', CAST(N'2002-05-24T00:00:00' AS SmallDateTime), 832235581)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiachiNV], [ChucVu], [NgaySinh], [SDT]) VALUES (N'QL01', N'Trần Tiểu Phụng', N'Hà Nội', N'Nhân Viên Quản Lý Rủi Ro', CAST(N'2000-06-07T00:00:00' AS SmallDateTime), 911146664)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiachiNV], [ChucVu], [NgaySinh], [SDT]) VALUES (N'TD01', N'Bùi Văn Nam', N'Hải Phòng', N'Nhân Viên Tín Dụng', CAST(N'1999-05-12T00:00:00' AS SmallDateTime), 658532671)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiachiNV], [ChucVu], [NgaySinh], [SDT]) VALUES (N'TP01', N'Chu Thị Lệ', N'Hưng Yên', N'Trưởng Phòng', CAST(N'1995-08-28T00:00:00' AS SmallDateTime), 869334641)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiachiNV], [ChucVu], [NgaySinh], [SDT]) VALUES (N'TV01', N'Ngô Mai Hiên', N'Hưng Yên', N'Nhân Viên Tư Vấn', CAST(N'2002-06-07T00:00:00' AS SmallDateTime), 385981367)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiachiNV], [ChucVu], [NgaySinh], [SDT]) VALUES (N'TV02', N'Nguyễn Minh Anh', N'Hà Nội', N'Nhân Viên Tư Vấn', CAST(N'2000-07-14T00:00:00' AS SmallDateTime), 398561230)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiachiNV], [ChucVu], [NgaySinh], [SDT]) VALUES (N'VH01', N'Tô Hải Dũng', N'Hà Nội', N'Nhân Viên Vận Hành', CAST(N'1998-06-08T00:00:00' AS SmallDateTime), 964412129)
GO
INSERT [dbo].[SOTHEODOI] ([MaSo], [SoHD], [TienGoc], [TienLai], [NgayGD], [TienGD], [TienNo]) VALUES (N'So001', N'HD01', 10000000, 1000000, CAST(N'2023-04-23T01:58:00' AS SmallDateTime), 1000000, 8000000)
INSERT [dbo].[SOTHEODOI] ([MaSo], [SoHD], [TienGoc], [TienLai], [NgayGD], [TienGD], [TienNo]) VALUES (N'So002', N'HD02', 85000000, 9520000, CAST(N'2023-04-23T01:58:00' AS SmallDateTime), 3500000, 91020000)
INSERT [dbo].[SOTHEODOI] ([MaSo], [SoHD], [TienGoc], [TienLai], [NgayGD], [TienGD], [TienNo]) VALUES (N'So003', N'HD03', 67800000, 4339200, CAST(N'2023-04-23T01:58:00' AS SmallDateTime), 56000000, 16139200)
GO
ALTER TABLE [dbo].[HOPDONGVAY]  WITH CHECK ADD  CONSTRAINT [FK__HOPDONGVAY__MaKH__4D94879B] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[HOPDONGVAY] CHECK CONSTRAINT [FK__HOPDONGVAY__MaKH__4D94879B]
GO
ALTER TABLE [dbo].[HOPDONGVAY]  WITH CHECK ADD  CONSTRAINT [FK__HOPDONGVAY__MaNV__4CA06362] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOPDONGVAY] CHECK CONSTRAINT [FK__HOPDONGVAY__MaNV__4CA06362]
GO
ALTER TABLE [dbo].[HOPDONGVAY]  WITH CHECK ADD  CONSTRAINT [FK_HOPDONGVAY_LOAIVAY] FOREIGN KEY([MaLoaiVay])
REFERENCES [dbo].[LOAIVAY] ([MaLoaiVay])
GO
ALTER TABLE [dbo].[HOPDONGVAY] CHECK CONSTRAINT [FK_HOPDONGVAY_LOAIVAY]
GO
ALTER TABLE [dbo].[SOTHEODOI]  WITH CHECK ADD  CONSTRAINT [FK__SOTHEODOI__TienN__5070F446] FOREIGN KEY([SoHD])
REFERENCES [dbo].[HOPDONGVAY] ([SoHD])
GO
ALTER TABLE [dbo].[SOTHEODOI] CHECK CONSTRAINT [FK__SOTHEODOI__TienN__5070F446]
GO
USE [master]
GO
ALTER DATABASE [QuanLyNganHang] SET  READ_WRITE 
GO
