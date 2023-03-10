USE [KiemKeTaiSan]
GO
/****** Object:  Table [dbo].[BanKiemKe]    Script Date: 2/3/2023 1:03:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanKiemKe](
	[MaBanKiemKe] [int] IDENTITY(1,1) NOT NULL,
	[MaPhieu] [int] NOT NULL,
	[MaDV] [int] NOT NULL,
	[HoVaTen] [nvarchar](100) NULL,
	[ChucVu] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](300) NULL,
	[TrangThai] [smallint] NULL,
	[NgayCapNhat] [smalldatetime] NULL,
	[NgayTao] [smalldatetime] NULL,
 CONSTRAINT [PK_BanKiemKe] PRIMARY KEY CLUSTERED 
(
	[MaBanKiemKe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuKiemKe]    Script Date: 2/3/2023 1:03:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuKiemKe](
	[MaCTPKK] [int] IDENTITY(1,1) NOT NULL,
	[MaPhieu] [int] NOT NULL,
	[TenTS] [nvarchar](200) NOT NULL,
	[TenNhomTS] [nvarchar](200) NOT NULL,
	[GiaTri] [int] NULL,
	[SoLuong] [int] NULL,
	[SoLuongThucTe] [int] NULL,
	[ConTot] [int] NULL,
	[KemPC] [int] NULL,
	[MatPC] [int] NULL,
	[HangSanXuat] [nvarchar](200) NULL,
	[NamSanXuat] [date] NULL,
	[NuocSanXuat] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_ChiTietPhieuKiemKe] PRIMARY KEY CLUSTERED 
(
	[MaCTPKK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonVi]    Script Date: 2/3/2023 1:03:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonVi](
	[MaDV] [int] IDENTITY(1,1) NOT NULL,
	[TenDV] [nvarchar](200) NULL,
	[MoTa] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_DonVi] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuVucPhong]    Script Date: 2/3/2023 1:03:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVucPhong](
	[MaKV] [int] IDENTITY(1,1) NOT NULL,
	[TenKV] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_KhuVucPhong] PRIMARY KEY CLUSTERED 
(
	[MaKV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 2/3/2023 1:03:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLP] [int] IDENTITY(1,1) NOT NULL,
	[TenLP] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTaiSan]    Script Date: 2/3/2023 1:03:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiSan](
	[MaLoaiTS] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTS] [nvarchar](200) NOT NULL,
	[GhiChu] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_LoaiTS] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 2/3/2023 1:03:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaND] [int] IDENTITY(1,1) NOT NULL,
	[MaDV] [int] NOT NULL,
	[TenDangNhap] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[HoVaTen] [nvarchar](100) NOT NULL,
	[ChucDanh] [nvarchar](100) NOT NULL,
	[PhanQuyen] [smallint] NULL,
	[SoDienThoai] [varchar](15) NULL,
	[Email] [varchar](100) NULL,
	[DiaChi] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhatKyHoatDong]    Script Date: 2/3/2023 1:03:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhatKyHoatDong](
	[MaNKHD] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [varchar](50) NULL,
	[HoatDong] [nvarchar](100) NULL,
	[ChiTietHoatDong] [nvarchar](500) NULL,
	[GhiChu] [nvarchar](300) NULL,
	[NgayHoatDong] [datetime] NULL,
 CONSTRAINT [PK_NhatKyHoatDong] PRIMARY KEY CLUSTERED 
(
	[MaNKHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomTaiSan]    Script Date: 2/3/2023 1:03:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomTaiSan](
	[MaNhomTS] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiTS] [int] NOT NULL,
	[TenNhomTS] [nvarchar](200) NULL,
	[GhiChu] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_NhomTaiSan] PRIMARY KEY CLUSTERED 
(
	[MaNhomTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanBo]    Script Date: 2/3/2023 1:03:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanBo](
	[MaPB] [int] IDENTITY(1,1) NOT NULL,
	[MaTS] [int] NOT NULL,
	[MaND] [int] NULL,
	[MaPhong] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DvTinh] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK_PhanBo] PRIMARY KEY CLUSTERED 
(
	[MaPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuKiemKe]    Script Date: 2/3/2023 1:03:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuKiemKe](
	[MaPhieu] [int] IDENTITY(1,1) NOT NULL,
	[MaPhong] [int] NOT NULL,
	[GhiChu] [nvarchar](300) NULL,
	[TrangThai] [smallint] NOT NULL,
	[NgayCapNhat] [datetime] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_PhieuKiemKe] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 2/3/2023 1:03:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [int] IDENTITY(1,1) NOT NULL,
	[MaLP] [int] NOT NULL,
	[MaKV] [int] NOT NULL,
	[TenPhong] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NOT NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_Phong_1] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiSan]    Script Date: 2/3/2023 1:03:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiSan](
	[MaTS] [int] IDENTITY(1,1) NOT NULL,
	[MaNhomTS] [int] NOT NULL,
	[TenTS] [nvarchar](200) NOT NULL,
	[GiaTri] [int] NULL,
	[SoLuongChinh] [int] NULL,
	[SoLuong] [int] NULL,
	[HangSanXuat] [nvarchar](200) NULL,
	[NamSanXuat] [date] NULL,
	[NuocSanXuat] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK_TaiSan] PRIMARY KEY CLUSTERED 
(
	[MaTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BanKiemKe] ON 

INSERT [dbo].[BanKiemKe] ([MaBanKiemKe], [MaPhieu], [MaDV], [HoVaTen], [ChucVu], [GhiChu], [TrangThai], [NgayCapNhat], [NgayTao]) VALUES (3, 29, 2, N'Trần Văn Đức', N'Trưởng ban', N'Không có', 0, CAST(N'2022-11-20T21:07:00' AS SmallDateTime), CAST(N'2022-11-20T21:07:00' AS SmallDateTime))
INSERT [dbo].[BanKiemKe] ([MaBanKiemKe], [MaPhieu], [MaDV], [HoVaTen], [ChucVu], [GhiChu], [TrangThai], [NgayCapNhat], [NgayTao]) VALUES (11, 28, 2, N'Nguyễn Anh Tú', N'Chuyên viên', N'Không có', 0, CAST(N'2022-11-20T21:38:00' AS SmallDateTime), CAST(N'2022-11-20T21:38:00' AS SmallDateTime))
INSERT [dbo].[BanKiemKe] ([MaBanKiemKe], [MaPhieu], [MaDV], [HoVaTen], [ChucVu], [GhiChu], [TrangThai], [NgayCapNhat], [NgayTao]) VALUES (12, 29, 2, N'Nguyễn Anh Tú', N'Chuyên viên', N'Không có', 0, CAST(N'2022-11-20T22:34:00' AS SmallDateTime), CAST(N'2022-11-20T22:34:00' AS SmallDateTime))
INSERT [dbo].[BanKiemKe] ([MaBanKiemKe], [MaPhieu], [MaDV], [HoVaTen], [ChucVu], [GhiChu], [TrangThai], [NgayCapNhat], [NgayTao]) VALUES (13, 30, 2, N'Trần Văn Đức', N'Trưởng ban', N'Không có', 0, CAST(N'2022-11-21T09:54:00' AS SmallDateTime), CAST(N'2022-11-21T09:54:00' AS SmallDateTime))
INSERT [dbo].[BanKiemKe] ([MaBanKiemKe], [MaPhieu], [MaDV], [HoVaTen], [ChucVu], [GhiChu], [TrangThai], [NgayCapNhat], [NgayTao]) VALUES (14, 31, 3, N'asd', N'sadas', N'Không có', 0, CAST(N'2022-11-21T10:38:00' AS SmallDateTime), CAST(N'2022-11-21T10:38:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[BanKiemKe] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietPhieuKiemKe] ON 

INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (1, 28, N'Bàn làm việc', N'Bàn', 0, 5, 5, 1, 3, 1, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-20T19:37:37.443' AS DateTime), CAST(N'2022-11-20T19:37:37.443' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (2, 28, N'Ghế gỗ', N'Ghế', 0, 4, 4, 2, 2, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-20T19:37:37.457' AS DateTime), CAST(N'2022-11-20T19:37:37.457' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (3, 28, N'Ghế nhựa', N'Ghế', 0, 24, 24, 12, 12, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-20T19:37:37.470' AS DateTime), CAST(N'2022-11-20T19:37:37.470' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (4, 28, N'Tủ gỗ 4 ngăn', N'Tủ', 0, 1, 1, 1, 0, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-20T19:37:37.483' AS DateTime), CAST(N'2022-11-20T19:37:37.483' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (5, 28, N'Tủ sắt', N'Tủ', 0, 4, 4, 4, 0, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-20T19:37:37.497' AS DateTime), CAST(N'2022-11-20T19:37:37.497' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (6, 28, N'Bộ máy vi tính - LG', N'Bộ máy vi tính', 0, 5, 5, 0, 0, 5, N'LG', NULL, N'Không có', N'Không có', CAST(N'2022-11-20T19:37:37.510' AS DateTime), CAST(N'2022-11-20T19:37:37.510' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (7, 28, N'Bộ máy vi tính - Samsung', N'Bộ máy vi tính', 0, 13, 13, 5, 0, 8, N'Samsung', NULL, N'Không có', N'Không có', CAST(N'2022-11-20T19:37:37.523' AS DateTime), CAST(N'2022-11-20T19:37:37.523' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (8, 28, N'Máy in - HP laserJet P2025d', N'Máy in', 0, 1, 1, 1, 0, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-20T19:37:37.537' AS DateTime), CAST(N'2022-11-20T19:37:37.537' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (9, 29, N'Bàn học', N'Bàn', 0, 1, 1, 1, 0, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-20T21:06:13.287' AS DateTime), CAST(N'2022-11-20T21:06:13.287' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (10, 29, N'Ghế nhựa', N'Ghế', 0, 1, 1, 1, 0, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-20T21:06:13.300' AS DateTime), CAST(N'2022-11-20T21:06:13.300' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (11, 29, N'Tủ gỗ 4 ngăn', N'Tủ', 0, 2, 2, 2, 0, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-20T21:06:13.313' AS DateTime), CAST(N'2022-11-20T21:06:13.313' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (12, 29, N'Tủ sắt', N'Tủ', 0, 6, 6, 6, 0, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-20T21:06:13.327' AS DateTime), CAST(N'2022-11-20T21:06:13.327' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (13, 29, N'Bộ máy vi tính - LG', N'Bộ máy vi tính', 0, 5, 5, 5, 0, 0, N'LG', NULL, N'Không có', N'Không có', CAST(N'2022-11-20T21:06:13.340' AS DateTime), CAST(N'2022-11-20T21:06:13.340' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (14, 29, N'Bộ máy vi tính - Samsung', N'Bộ máy vi tính', 0, 6, 6, 3, 2, 1, N'Samsung', NULL, N'Không có', N'Không có', CAST(N'2022-11-20T21:06:13.353' AS DateTime), CAST(N'2022-11-20T21:06:13.353' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (15, 29, N'Máy in - HP laserJet P2025d', N'Máy in', 0, 6, 6, 6, 0, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-20T21:06:13.363' AS DateTime), CAST(N'2022-11-20T21:06:13.363' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (16, 30, N'Bàn học', N'Bàn', 0, 3, 3, 2, 1, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-21T09:53:37.887' AS DateTime), CAST(N'2022-11-21T09:53:37.887' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (17, 30, N'Bàn uống nước', N'Bàn', 0, 5, 5, 4, 1, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-21T09:53:37.900' AS DateTime), CAST(N'2022-11-21T09:53:37.900' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (18, 30, N'Tủ gỗ 4 ngăn', N'Tủ', 0, 2, 2, 2, 0, 0, N'Không có', NULL, N'Không có', N'123', CAST(N'2022-11-21T09:53:37.913' AS DateTime), CAST(N'2022-11-21T09:53:37.913' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (19, 30, N'Bộ máy vi tính - Samsung', N'Bộ máy vi tính', 0, 1, 1, 0, 1, 0, N'Samsung', NULL, N'Không có', N'Không có', CAST(N'2022-11-21T09:53:37.927' AS DateTime), CAST(N'2022-11-21T09:53:37.927' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (20, 30, N'Máy in - HP laserJet P2025d', N'Máy in', 0, 1, 1, 1, 0, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-21T09:53:37.940' AS DateTime), CAST(N'2022-11-21T09:53:37.940' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (21, 31, N'Bàn học', N'Bàn', 0, 1, 0, 0, 0, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-21T10:38:05.730' AS DateTime), CAST(N'2022-11-21T10:38:05.730' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (22, 31, N'Bàn làm việc', N'Bàn', 0, 1, 0, 0, 0, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-21T10:38:05.743' AS DateTime), CAST(N'2022-11-21T10:38:05.743' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (23, 31, N'Bàn uống nước', N'Bàn', 0, 1, 0, 0, 0, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-21T10:38:05.753' AS DateTime), CAST(N'2022-11-21T10:38:05.753' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (24, 31, N'Tủ gỗ 4 ngăn', N'Tủ', 0, 1, 0, 0, 0, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-21T10:38:05.763' AS DateTime), CAST(N'2022-11-21T10:38:05.763' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (25, 31, N'Bộ máy vi tính - LG', N'Bộ máy vi tính', 0, 1, 0, 0, 0, 0, N'LG', NULL, N'Không có', N'Không có', CAST(N'2022-11-21T10:38:05.777' AS DateTime), CAST(N'2022-11-21T10:38:05.777' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (26, 31, N'Bộ máy vi tính - Samsung', N'Bộ máy vi tính', 0, 1, 0, 0, 0, 0, N'Samsung', NULL, N'Không có', N'Không có', CAST(N'2022-11-21T10:38:05.800' AS DateTime), CAST(N'2022-11-21T10:38:05.800' AS DateTime))
INSERT [dbo].[ChiTietPhieuKiemKe] ([MaCTPKK], [MaPhieu], [TenTS], [TenNhomTS], [GiaTri], [SoLuong], [SoLuongThucTe], [ConTot], [KemPC], [MatPC], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (27, 31, N'Máy in - HP laserJet P2025d', N'Máy in', 0, 1, 0, 0, 0, 0, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-11-21T10:38:05.823' AS DateTime), CAST(N'2022-11-21T10:38:05.823' AS DateTime))
SET IDENTITY_INSERT [dbo].[ChiTietPhieuKiemKe] OFF
GO
SET IDENTITY_INSERT [dbo].[DonVi] ON 

INSERT [dbo].[DonVi] ([MaDV], [TenDV], [MoTa], [NgayCapNhat], [NgayTao]) VALUES (1, N'Ong Trum', N'Không có', CAST(N'2022-10-24T00:00:00.000' AS DateTime), CAST(N'2022-10-24T00:00:00.000' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [MoTa], [NgayCapNhat], [NgayTao]) VALUES (2, N'Phòng cơ sở vật chất', N'Phòng Cơ sở vật chất có chức năng tham mưu và giúp Hiệu trưởng trong công tác quản lý tài sản, vệ sinh môi trường, quy hoạch, xây dựng và phát triển cơ sở vật chất của nhà trường.', CAST(N'2022-11-20T00:00:00.000' AS DateTime), CAST(N'2022-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [MoTa], [NgayCapNhat], [NgayTao]) VALUES (3, N'Phòng thanh tra', N'Không có', CAST(N'2022-11-20T00:00:00.000' AS DateTime), CAST(N'2022-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [MoTa], [NgayCapNhat], [NgayTao]) VALUES (4, N'Phòng kế toán', N'Không có', CAST(N'2022-11-20T00:00:00.000' AS DateTime), CAST(N'2022-11-20T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DonVi] OFF
GO
SET IDENTITY_INSERT [dbo].[KhuVucPhong] ON 

INSERT [dbo].[KhuVucPhong] ([MaKV], [TenKV], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (7, N'Dãy E', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[KhuVucPhong] ([MaKV], [TenKV], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (8, N'Dãy H', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[KhuVucPhong] ([MaKV], [TenKV], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (11, N'3123', N'213', CAST(N'2022-11-22T11:50:31.320' AS DateTime), CAST(N'2022-11-22T11:50:31.320' AS DateTime))
SET IDENTITY_INSERT [dbo].[KhuVucPhong] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiPhong] ON 

INSERT [dbo].[LoaiPhong] ([MaLP], [TenLP], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (1, N'Thực hành', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[LoaiPhong] ([MaLP], [TenLP], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (2, N'Lý thuyết', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[LoaiPhong] ([MaLP], [TenLP], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (5, N'13123', N'213213', CAST(N'2022-11-22T11:50:35.437' AS DateTime), CAST(N'2022-11-22T11:50:35.437' AS DateTime))
SET IDENTITY_INSERT [dbo].[LoaiPhong] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTaiSan] ON 

INSERT [dbo].[LoaiTaiSan] ([MaLoaiTS], [TenLoaiTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (1, N'Công cụ dụng cụ', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[LoaiTaiSan] ([MaLoaiTS], [TenLoaiTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (2, N'Tài sản cố định', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[LoaiTaiSan] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaND], [MaDV], [TenDangNhap], [MatKhau], [HoVaTen], [ChucDanh], [PhanQuyen], [SoDienThoai], [Email], [DiaChi], [NgayCapNhat], [NgayTao]) VALUES (2, 2, N'admin', N'admin', N'Trần Văn Đức', N'Trưởng ban', 1, N'0326393540', N'duc@gmail.com', N'Binh Duong', CAST(N'2022-10-24T00:00:00.000' AS DateTime), CAST(N'2022-10-24T00:00:00.000' AS DateTime))
INSERT [dbo].[NguoiDung] ([MaND], [MaDV], [TenDangNhap], [MatKhau], [HoVaTen], [ChucDanh], [PhanQuyen], [SoDienThoai], [Email], [DiaChi], [NgayCapNhat], [NgayTao]) VALUES (5, 2, N'admin1', N'admin1', N'Nguyễn Anh Tú', N'Chuyên viên', 1, N'0123456789', N'tu@gmail.com', N'Binh Duong', CAST(N'2022-11-21T00:00:00.000' AS DateTime), CAST(N'2022-11-21T00:00:00.000' AS DateTime))
INSERT [dbo].[NguoiDung] ([MaND], [MaDV], [TenDangNhap], [MatKhau], [HoVaTen], [ChucDanh], [PhanQuyen], [SoDienThoai], [Email], [DiaChi], [NgayCapNhat], [NgayTao]) VALUES (11, 2, N'admin2', N'admin2', N'Nguyễn Anh Đức', N'Thành viên', 0, N'0123456744', N'asd2wq@gmail.com', N'Binh Duong', CAST(N'2022-11-22T00:00:00.000' AS DateTime), CAST(N'2022-11-22T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[NhatKyHoatDong] ON 

INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (1, N'admin', N'Thêm', N'Thêm người dùng', NULL, CAST(N'2022-11-22T11:26:25.013' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (2, N'admin', N'Thêm', N'Thêm mới phòng', NULL, CAST(N'2022-11-22T11:50:27.397' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (3, N'admin', N'Thêm', N'Thêm mới khu vực phòng', NULL, CAST(N'2022-11-22T11:50:31.323' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (4, N'admin', N'Thêm', N'Thêm mới loại phòng', NULL, CAST(N'2022-11-22T11:50:35.440' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (5, N'admin', N'Thêm', N'Thêm mới tài sản', NULL, CAST(N'2022-11-22T11:50:43.857' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (6, N'admin', N'Thêm', N'Thêm mới nhóm tài sản', NULL, CAST(N'2022-11-22T11:50:48.120' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (7, N'admin', N'Thêm', N'Thêm mới loại tài sản', NULL, CAST(N'2022-11-22T11:50:53.157' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (8, N'admin', N'Xóa', N'Xóa người dùng có Mã Người Dùng là: 8', NULL, CAST(N'2022-11-22T11:51:09.357' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (9, N'admin', N'Xóa', N'Xóa phòng có ID là: 11', NULL, CAST(N'2022-11-22T11:51:13.787' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (10, N'admin', N'Xóa', N'Xóa tài sản có ID là: 24', NULL, CAST(N'2022-11-22T11:51:17.947' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (11, N'admin', N'Xóa', N'Xóa nhóm tài sản có ID là: 14', NULL, CAST(N'2022-11-22T11:51:20.920' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (12, N'admin', N'Xóa', N'Xóa loại tài sản có ID là: 5', NULL, CAST(N'2022-11-22T11:51:23.527' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (13, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-22T12:06:55.370' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (14, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-22T12:23:16.637' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (15, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-22T14:41:25.290' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (16, N'admin', N'Thêm', N'Thêm người dùng', NULL, CAST(N'2022-11-22T14:41:39.973' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (17, N'admin', N'Xóa', N'Xóa người dùng có Mã Người Dùng là: 10', NULL, CAST(N'2022-11-22T14:41:55.760' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (18, N'admin', N'Sửa', N'Sửa người dùng có Mã Người Dùng là: 9', NULL, CAST(N'2022-11-22T14:42:02.253' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (19, N'admin', N'Sửa', N'Sửa người dùng có Mã Người Dùng là: 9', NULL, CAST(N'2022-11-22T14:42:10.757' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (20, N'admin', N'Xóa', N'Xóa người dùng có Mã Người Dùng là: 9', NULL, CAST(N'2022-11-22T14:42:13.257' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (21, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-22T14:55:14.840' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (22, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-22T15:01:44.073' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (23, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-22T15:07:47.747' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (24, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-22T15:21:01.287' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (25, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-22T15:44:43.910' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (26, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-22T16:10:08.833' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (27, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-22T16:30:44.440' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (28, N'admin', N'Thêm', N'Thêm mới đơn vị', NULL, CAST(N'2022-11-22T16:37:19.897' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (29, N'admin', N'Sửa', N'Sửa đơn vị có ID là: 5', NULL, CAST(N'2022-11-22T16:37:24.150' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (30, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-22T16:38:05.960' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (31, N'admin', N'Sửa', N'Sửa đơn vị có ID là: 5', NULL, CAST(N'2022-11-22T16:38:18.477' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (32, N'admin', N'Sửa', N'Sửa đơn vị có ID là: 5', NULL, CAST(N'2022-11-22T16:38:21.460' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (33, N'admin', N'Xóa', N'Xóa đơn vị có ID là: 5', NULL, CAST(N'2022-11-22T16:42:15.843' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (34, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-22T21:29:51.517' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (35, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-22T21:39:43.850' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (36, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-23T20:30:10.123' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (37, N'admin', N'Xóa', N'Xóa tài sản có ID là: 19', NULL, CAST(N'2022-11-23T20:31:03.443' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (38, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-23T20:55:08.887' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (39, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-23T22:09:47.270' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (40, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-23T22:29:24.780' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (41, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-23T23:44:29.580' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (42, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-23T23:57:47.943' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (43, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-23T23:58:17.300' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (44, N'admin', N'Sửa', N'Sửa tài sản có ID là: 18', NULL, CAST(N'2022-11-23T23:58:24.183' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (45, N'admin', N'Sửa', N'Sửa tài sản có ID là: 18', NULL, CAST(N'2022-11-23T23:59:10.267' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (46, N'admin', N'Sửa', N'Sửa tài sản có ID là: 18', NULL, CAST(N'2022-11-24T00:00:34.380' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (47, N'admin', N'Sửa', N'Sửa tài sản có ID là: 18', NULL, CAST(N'2022-11-24T00:01:02.017' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (48, N'admin', N'Sửa', N'Sửa tài sản có ID là: 3', NULL, CAST(N'2022-11-24T00:01:09.393' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (49, N'admin', N'Sửa', N'Sửa tài sản có ID là: 11', NULL, CAST(N'2022-11-24T00:01:21.623' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (50, N'admin', N'Sửa', N'Vừa thêm số lượng thiết bị thiết bị vào phòng: 5 - Mã thiết bị là: 9', NULL, CAST(N'2022-11-24T00:05:40.023' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (51, N'admin', N'Sửa', N'Vừa thêm số lượng thiết bị thiết bị vào phòng: 5 - Mã thiết bị là: 11', NULL, CAST(N'2022-11-24T00:05:40.043' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (52, N'admin1', N'Đăng nhập', N'admin1 đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-24T00:06:04.493' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (53, N'admin1', N'Sửa', N'Vừa thêm số lượng thiết bị thiết bị vào phòng: 2 - Mã thiết bị là: 11', NULL, CAST(N'2022-11-24T00:06:11.213' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (54, N'admin1', N'Sửa', N'Vừa thêm số lượng thiết bị thiết bị vào phòng: 2 - Mã thiết bị là: 14', NULL, CAST(N'2022-11-24T00:06:11.230' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (55, N'admin1', N'Đăng nhập', N'admin1 đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-24T00:08:19.840' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (56, N'admin1', N'Sửa', N'Vừa thêm số lượng thiết bị thiết bị vào phòng: 2 - Mã thiết bị là: 10', NULL, CAST(N'2022-11-24T00:08:28.427' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (57, N'admin1', N'Sửa', N'Vừa thêm số lượng thiết bị thiết bị vào phòng: 2 - Mã thiết bị là: 14', NULL, CAST(N'2022-11-24T00:08:28.457' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (58, N'admin1', N'Sửa', N'Vừa thêm số lượng thiết bị thiết bị vào phòng: 2 - Mã thiết bị là: 11', NULL, CAST(N'2022-11-24T00:08:28.483' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (59, N'admin1', N'Đăng nhập', N'admin1 đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-24T00:09:19.220' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (60, N'admin1', N'Sửa', N'Vừa thêm số lượng thiết bị thiết bị vào phòng: 2 - Mã thiết bị là: 11', NULL, CAST(N'2022-11-24T00:09:26.960' AS DateTime))
INSERT [dbo].[NhatKyHoatDong] ([MaNKHD], [TenDangNhap], [HoatDong], [ChiTietHoatDong], [GhiChu], [NgayHoatDong]) VALUES (61, N'admin', N'Đăng nhập', N'admin đăng nhập vào hệ thống thành công', NULL, CAST(N'2022-11-25T00:19:51.340' AS DateTime))
SET IDENTITY_INSERT [dbo].[NhatKyHoatDong] OFF
GO
SET IDENTITY_INSERT [dbo].[NhomTaiSan] ON 

INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (1, 1, N'Bàn', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (2, 1, N'Ghế', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (4, 1, N'Tủ', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (5, 1, N'Kệ', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (6, 2, N'Bộ máy vi tính', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (7, 2, N'Máy đa năng: in, photo, scan', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (8, 2, N'Máy in', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (9, 2, N'Tủ lạnh', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (10, 2, N'Tivi', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (11, 2, N'Camera', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (12, 2, N'Máy điều hòa', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[NhomTaiSan] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanBo] ON 

INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (106, 10, 2, 2, 7, NULL, N'Không có', CAST(N'2022-11-24T00:08:28.420' AS DateTime), CAST(N'2022-10-30T15:48:49.183' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (107, 11, 5, 2, 9, NULL, N'Không có', CAST(N'2022-11-24T00:09:26.957' AS DateTime), CAST(N'2022-10-30T15:48:49.197' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (108, 14, 2, 2, 7, NULL, N'Không có', CAST(N'2022-11-24T00:08:28.450' AS DateTime), CAST(N'2022-10-30T15:48:49.207' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (109, 18, 2, 2, 6, NULL, N'Không có', CAST(N'2022-11-02T13:16:29.187' AS DateTime), CAST(N'2022-10-30T15:48:49.220' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (110, 10, 2, 1, 4, NULL, N'Không có', CAST(N'2022-11-02T13:12:46.183' AS DateTime), CAST(N'2022-10-30T16:03:20.190' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (111, 14, 2, 1, 5, NULL, N'Không có', CAST(N'2022-11-02T13:21:18.827' AS DateTime), CAST(N'2022-10-30T16:03:20.210' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (112, 5, 2, 1, 24, NULL, N'Không có', CAST(N'2022-11-10T07:50:51.447' AS DateTime), CAST(N'2022-10-30T16:03:20.220' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (113, 9, 2, 2, 2, NULL, N'Không có', CAST(N'2022-11-02T13:15:13.287' AS DateTime), CAST(N'2022-10-31T20:29:12.497' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (114, 5, 2, 2, 1, NULL, N'2', CAST(N'2022-10-31T20:29:12.517' AS DateTime), CAST(N'2022-10-31T20:29:12.517' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (115, 3, 2, 2, 1, NULL, N'3', CAST(N'2022-10-31T20:29:12.527' AS DateTime), CAST(N'2022-10-31T20:29:12.527' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (116, 18, 2, 1, 1, NULL, N'Không có', CAST(N'2022-11-02T13:13:04.590' AS DateTime), CAST(N'2022-11-02T13:13:04.590' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (117, 11, 2, 1, 13, NULL, N'Không có', CAST(N'2022-11-20T15:12:38.813' AS DateTime), CAST(N'2022-11-02T13:19:13.893' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (118, 9, 2, 1, 1, NULL, N'Không có', CAST(N'2022-11-02T13:19:58.697' AS DateTime), CAST(N'2022-11-02T13:19:58.697' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (119, 4, 2, 1, 4, NULL, N'1', CAST(N'2022-11-10T07:50:51.420' AS DateTime), CAST(N'2022-11-10T07:50:51.420' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (120, 2, 2, 1, 5, NULL, N'3', CAST(N'2022-11-10T07:50:51.463' AS DateTime), CAST(N'2022-11-10T07:50:51.463' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (125, 11, 2, 6, 1, NULL, N'Không có', CAST(N'2022-11-17T20:19:41.030' AS DateTime), CAST(N'2022-11-17T20:19:41.030' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (126, 14, 2, 6, 1, NULL, N'Không có', CAST(N'2022-11-17T20:19:41.047' AS DateTime), CAST(N'2022-11-17T20:19:41.047' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (127, 18, 2, 6, 1, NULL, N'Không có', CAST(N'2022-11-17T20:19:41.053' AS DateTime), CAST(N'2022-11-17T20:19:41.053' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (128, 9, 2, 6, 1, NULL, N'Không có', CAST(N'2022-11-17T20:19:41.067' AS DateTime), CAST(N'2022-11-17T20:19:41.067' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (129, 3, 2, 6, 1, NULL, N'Không có', CAST(N'2022-11-17T20:19:41.080' AS DateTime), CAST(N'2022-11-17T20:19:41.080' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (130, 1, 2, 6, 1, NULL, N'Không có', CAST(N'2022-11-17T20:19:41.093' AS DateTime), CAST(N'2022-11-17T20:19:41.093' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (131, 2, 2, 6, 1, NULL, N'Không có', CAST(N'2022-11-17T20:19:41.107' AS DateTime), CAST(N'2022-11-17T20:19:41.107' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (132, 18, 2, 5, 1, NULL, N'Không có', CAST(N'2022-11-21T09:53:09.717' AS DateTime), CAST(N'2022-11-21T09:53:09.717' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (133, 11, 2, 5, 2, NULL, N'Không có', CAST(N'2022-11-24T00:05:40.040' AS DateTime), CAST(N'2022-11-21T09:53:09.737' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (134, 9, 2, 5, 3, NULL, N'Không có', CAST(N'2022-11-24T00:05:40.017' AS DateTime), CAST(N'2022-11-21T09:53:09.750' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (135, 3, 2, 5, 3, NULL, N'Không có', CAST(N'2022-11-21T09:53:09.760' AS DateTime), CAST(N'2022-11-21T09:53:09.760' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (136, 1, 2, 5, 5, NULL, N'Không có', CAST(N'2022-11-21T09:53:09.773' AS DateTime), CAST(N'2022-11-21T09:53:09.773' AS DateTime))
SET IDENTITY_INSERT [dbo].[PhanBo] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuKiemKe] ON 

INSERT [dbo].[PhieuKiemKe] ([MaPhieu], [MaPhong], [GhiChu], [TrangThai], [NgayCapNhat], [NgayTao]) VALUES (28, 1, N'Không có', 1, CAST(N'2022-11-20T19:37:37.410' AS DateTime), CAST(N'2022-11-20T19:37:37.410' AS DateTime))
INSERT [dbo].[PhieuKiemKe] ([MaPhieu], [MaPhong], [GhiChu], [TrangThai], [NgayCapNhat], [NgayTao]) VALUES (29, 2, N'Không có', 1, CAST(N'2022-11-20T21:06:13.253' AS DateTime), CAST(N'2022-11-20T21:06:13.253' AS DateTime))
INSERT [dbo].[PhieuKiemKe] ([MaPhieu], [MaPhong], [GhiChu], [TrangThai], [NgayCapNhat], [NgayTao]) VALUES (30, 5, N'Không có', 1, CAST(N'2022-11-21T09:53:37.857' AS DateTime), CAST(N'2022-11-21T09:53:37.857' AS DateTime))
INSERT [dbo].[PhieuKiemKe] ([MaPhieu], [MaPhong], [GhiChu], [TrangThai], [NgayCapNhat], [NgayTao]) VALUES (31, 6, N'Không có', 0, CAST(N'2022-11-21T10:38:05.703' AS DateTime), CAST(N'2022-11-21T10:38:05.700' AS DateTime))
SET IDENTITY_INSERT [dbo].[PhieuKiemKe] OFF
GO
SET IDENTITY_INSERT [dbo].[Phong] ON 

INSERT [dbo].[Phong] ([MaPhong], [MaLP], [MaKV], [TenPhong], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (1, 2, 7, N'Phòng E3-103', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Phong] ([MaPhong], [MaLP], [MaKV], [TenPhong], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (2, 2, 7, N'Phòng E3-104', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Phong] ([MaPhong], [MaLP], [MaKV], [TenPhong], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (5, 2, 7, N'Phòng E3-105', N'Không có', CAST(N'2022-10-24T00:00:00.000' AS DateTime), CAST(N'2022-10-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Phong] ([MaPhong], [MaLP], [MaKV], [TenPhong], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (6, 2, 7, N'Phòng E3-302', N'Không có', CAST(N'2022-10-24T00:00:00.000' AS DateTime), CAST(N'2022-10-24T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Phong] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiSan] ON 

INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (1, 1, N'Bàn uống nước', 0, 30, 24, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (2, 1, N'Bàn làm việc', 0, 30, 24, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (3, 1, N'Bàn học', 0, 40, 35, N'Mỹ', NULL, N'Không có', N'Không có', CAST(N'2022-11-24T00:01:09.390' AS DateTime), CAST(N'2022-11-24T00:01:09.390' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (4, 2, N'Ghế gỗ', 0, 50, 46, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (5, 2, N'Ghế nhựa', 0, 60, 35, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (9, 4, N'Tủ gỗ 4 ngăn', 0, 30, 22, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (10, 4, N'Tủ sắt', 0, 15, 3, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (11, 6, N'Bộ máy vi tính - Samsung', 0, 30, 5, N'Samsung', NULL, N'Trung quốc', N'Không có', CAST(N'2022-11-24T00:01:21.620' AS DateTime), CAST(N'2022-11-24T00:01:21.620' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (14, 6, N'Bộ máy vi tính - LG', 0, 30, 16, N'LG', NULL, N'Không có', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (18, 8, N'Máy in - HP laserJet P2025d', 0, 10, 0, N'Không có', NULL, N'Không có', N'Test', CAST(N'2022-11-24T00:01:02.013' AS DateTime), CAST(N'2022-11-24T00:01:02.013' AS DateTime))
SET IDENTITY_INSERT [dbo].[TaiSan] OFF
GO
ALTER TABLE [dbo].[NguoiDung] ADD  CONSTRAINT [DF_NguoiDung_ChucDanh]  DEFAULT ('0') FOR [ChucDanh]
GO
ALTER TABLE [dbo].[NhomTaiSan] ADD  CONSTRAINT [DF_NhomTaiSan_GhiChu]  DEFAULT (N'Không có') FOR [GhiChu]
GO
ALTER TABLE [dbo].[PhanBo] ADD  CONSTRAINT [DF_PhanBo_SoLuong]  DEFAULT ((1)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[Phong] ADD  CONSTRAINT [DF_Phong_GhiChu]  DEFAULT (N'Không có') FOR [GhiChu]
GO
ALTER TABLE [dbo].[TaiSan] ADD  CONSTRAINT [DF_TaiSan_GiaTri]  DEFAULT ((0)) FOR [GiaTri]
GO
ALTER TABLE [dbo].[TaiSan] ADD  CONSTRAINT [DF_TaiSan_SoLuongChinh]  DEFAULT ((0)) FOR [SoLuongChinh]
GO
ALTER TABLE [dbo].[TaiSan] ADD  CONSTRAINT [DF_TaiSan_SoLuong]  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[TaiSan] ADD  CONSTRAINT [DF_TaiSan_HangSanXuat]  DEFAULT (N'Không có') FOR [HangSanXuat]
GO
ALTER TABLE [dbo].[TaiSan] ADD  CONSTRAINT [DF_TaiSan_NuocSanXuat]  DEFAULT (N'Không có') FOR [NuocSanXuat]
GO
ALTER TABLE [dbo].[TaiSan] ADD  CONSTRAINT [DF_TaiSan_GhiChu]  DEFAULT (N'Không có') FOR [GhiChu]
GO
ALTER TABLE [dbo].[BanKiemKe]  WITH CHECK ADD  CONSTRAINT [FK_BanKiemKe_PhieuKiemKe] FOREIGN KEY([MaPhieu])
REFERENCES [dbo].[PhieuKiemKe] ([MaPhieu])
GO
ALTER TABLE [dbo].[BanKiemKe] CHECK CONSTRAINT [FK_BanKiemKe_PhieuKiemKe]
GO
ALTER TABLE [dbo].[ChiTietPhieuKiemKe]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuKiemKe_PhieuKiemKe] FOREIGN KEY([MaPhieu])
REFERENCES [dbo].[PhieuKiemKe] ([MaPhieu])
GO
ALTER TABLE [dbo].[ChiTietPhieuKiemKe] CHECK CONSTRAINT [FK_ChiTietPhieuKiemKe_PhieuKiemKe]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_DonVi] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DonVi] ([MaDV])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_DonVi]
GO
ALTER TABLE [dbo].[NhomTaiSan]  WITH CHECK ADD  CONSTRAINT [FK_NhomTaiSan_LoaiTaiSan] FOREIGN KEY([MaLoaiTS])
REFERENCES [dbo].[LoaiTaiSan] ([MaLoaiTS])
GO
ALTER TABLE [dbo].[NhomTaiSan] CHECK CONSTRAINT [FK_NhomTaiSan_LoaiTaiSan]
GO
ALTER TABLE [dbo].[PhanBo]  WITH CHECK ADD  CONSTRAINT [FK_PhanBo_TaiSan] FOREIGN KEY([MaTS])
REFERENCES [dbo].[TaiSan] ([MaTS])
GO
ALTER TABLE [dbo].[PhanBo] CHECK CONSTRAINT [FK_PhanBo_TaiSan]
GO
ALTER TABLE [dbo].[PhieuKiemKe]  WITH CHECK ADD  CONSTRAINT [FK_PhieuKiemKe_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[PhieuKiemKe] CHECK CONSTRAINT [FK_PhieuKiemKe_Phong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_KhuVucPhong] FOREIGN KEY([MaKV])
REFERENCES [dbo].[KhuVucPhong] ([MaKV])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_KhuVucPhong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLP])
REFERENCES [dbo].[LoaiPhong] ([MaLP])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
ALTER TABLE [dbo].[TaiSan]  WITH CHECK ADD  CONSTRAINT [FK_TaiSan_NhomTaiSan] FOREIGN KEY([MaNhomTS])
REFERENCES [dbo].[NhomTaiSan] ([MaNhomTS])
GO
ALTER TABLE [dbo].[TaiSan] CHECK CONSTRAINT [FK_TaiSan_NhomTaiSan]
GO
