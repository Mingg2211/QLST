/****** Object:  Table [dbo].[ChitietHoaDon]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChitietHoaDon](
	[MactHD] [char](10) NOT NULL,
	[MaHD] [char](10) NULL,
	[MaHH] [char](15) NULL,
	[Dongia] [float] NULL,
	[soluong] [int] NOT NULL,
	[Tien] [float] NULL,
 CONSTRAINT [CTHD_MACTHD_PK] PRIMARY KEY CLUSTERED 
(
	[MactHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChitietNhap]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChitietNhap](
	[Mactn] [char](10) NOT NULL,
	[MaPN] [char](10) NULL,
	[MaHH] [char](15) NULL,
	[Soluong] [int] NOT NULL,
	[Tien] [float] NULL,
	[Dongia] [float] NULL,
 CONSTRAINT [CTN_MACTN_Pk] PRIMARY KEY CLUSTERED 
(
	[Mactn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHH] [char](15) NOT NULL,
	[TenHH] [nvarchar](50) NULL,
	[ChungLoai] [nvarchar](30) NULL,
	[DonViTinh] [nvarchar](10) NULL,
	[TrongLuong] [char](15) NULL,
	[GiaBan] [float] NULL,
	[NoiSX] [nvarchar](5) NULL,
	[HSD] [date] NULL,
	[Soluong] [int] NOT NULL,
 CONSTRAINT [HH_MAHH_PK] PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [char](10) NOT NULL,
	[MaNV] [char](10) NULL,
	[MaKH] [char](10) NULL,
	[Ngaylap] [datetime] NULL,
	[VAT] [float] NULL,
	[Tongtien] [float] NULL,
 CONSTRAINT [HD_MaHD_Pk] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKh] [char](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[Diachi] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[SDT] [char](15) NULL,
	[diem] [int] NULL,
 CONSTRAINT [KH_MaKH_PK] PRIMARY KEY CLUSTERED 
(
	[MaKh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhoHang]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhoHang](
	[MaKho] [char](10) NOT NULL,
	[TenKho] [nvarchar](50) NULL,
	[MaThuKho] [char](10) NULL,
	[DiaChi] [nvarchar](30) NULL,
 CONSTRAINT [KH_MaKho_PK] PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [char](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[Gioitinh] [nvarchar](3) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [char](15) NULL,
 CONSTRAINT [NV_MANV_PK] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [char](10) NOT NULL,
	[MaThuKho] [char](10) NULL,
	[MaKho] [char](10) NULL,
	[Ngaylap] [datetime] NULL,
	[VAT] [float] NULL,
	[Tongtien] [float] NULL,
 CONSTRAINT [PN_MaPN_PK] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taikhoan](
	[username] [char](50) NOT NULL,
	[password] [char](30) NOT NULL,
 CONSTRAINT [PK_taikhoan] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'1         ', N'hd004     ', N'hh004          ', 60000, 40, 2400000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'123       ', N'12        ', N'hh002          ', 2000000, 15, 30000000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd001   ', N'hd001     ', N'hh001          ', 10000000, 21, 210000000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd002   ', N'hd002     ', N'hh002          ', 2000000, 37, 74000000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd003   ', N'hd002     ', N'hh003          ', 20000, 41, 820000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd004   ', N'hd002     ', N'hh004          ', 60000, 55, 3300000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd005   ', N'hd003     ', N'hh005          ', 50000000, 18, 900000000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd006   ', N'hd004     ', N'hh006          ', 6000000, 6, 36000000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd007   ', N'hd004     ', N'hh007          ', 700000, 8, 5600000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd008   ', N'hd005     ', N'hh008          ', 15000, 47, 705000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd009   ', N'hd006     ', N'hh009          ', 10000, 9, 90000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd010   ', N'hd005     ', N'hh010          ', 15000, 10, 150000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd011   ', N'hd007     ', N'hh011          ', 5000, 15, 75000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd012   ', N'hd009     ', N'hh012          ', 45000, 16, 720000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd013   ', N'hd008     ', N'hh013          ', 40000, 3, 120000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd014   ', N'hd010     ', N'hh014          ', 5000000, 17, 85000000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd015   ', N'hd010     ', N'hh015          ', 450000, 18, 8100000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd016   ', N'hd001     ', N'hh016          ', 200000, 19, 3800000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd017   ', N'hd005     ', N'hh017          ', 3500000, 20, 70000000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd018   ', N'hd006     ', N'hh018          ', 1200000, 30, 36000000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd019   ', N'hd008     ', N'hh019          ', 100000, 24, 2400000)
INSERT [dbo].[ChitietHoaDon] ([MactHD], [MaHD], [MaHH], [Dongia], [soluong], [Tien]) VALUES (N'cthd020   ', N'hd007     ', N'hh020          ', 450000, 12, 5400000)
INSERT [dbo].[ChitietNhap] ([Mactn], [MaPN], [MaHH], [Soluong], [Tien], [Dongia]) VALUES (N'1         ', N'pn002     ', N'hh003          ', 3, 60000, 20000)
INSERT [dbo].[ChitietNhap] ([Mactn], [MaPN], [MaHH], [Soluong], [Tien], [Dongia]) VALUES (N'ctn001    ', N'pn001     ', N'hh001          ', 4, 16000000, 8000000)
INSERT [dbo].[ChitietNhap] ([Mactn], [MaPN], [MaHH], [Soluong], [Tien], [Dongia]) VALUES (N'ctn002    ', N'pn002     ', N'hh002          ', 5, 8000000, 2000000)
INSERT [dbo].[ChitietNhap] ([Mactn], [MaPN], [MaHH], [Soluong], [Tien], [Dongia]) VALUES (N'ctn003    ', N'pn003     ', N'hh003          ', 6, 60000, 20000)
INSERT [dbo].[ChitietNhap] ([Mactn], [MaPN], [MaHH], [Soluong], [Tien], [Dongia]) VALUES (N'ctn004    ', N'pn004     ', N'hh004          ', 7, 96000, 48000)
INSERT [dbo].[ChitietNhap] ([Mactn], [MaPN], [MaHH], [Soluong], [Tien], [Dongia]) VALUES (N'ctn005    ', N'pn005     ', N'hh005          ', 1, 80000000, 40000000)
INSERT [dbo].[ChitietNhap] ([Mactn], [MaPN], [MaHH], [Soluong], [Tien], [Dongia]) VALUES (N'ctn006    ', N'pn006     ', N'hh006          ', 3, 9600000, 4800000)
INSERT [dbo].[ChitietNhap] ([Mactn], [MaPN], [MaHH], [Soluong], [Tien], [Dongia]) VALUES (N'ctn007    ', N'pn007     ', N'hh007          ', 4, 1120000, 560000)
INSERT [dbo].[ChitietNhap] ([Mactn], [MaPN], [MaHH], [Soluong], [Tien], [Dongia]) VALUES (N'ctn008    ', N'pn008     ', N'hh008          ', 6, 24000, 12000)
INSERT [dbo].[ChitietNhap] ([Mactn], [MaPN], [MaHH], [Soluong], [Tien], [Dongia]) VALUES (N'ctn009    ', N'pn009     ', N'hh009          ', 8, 16000, 8000)
INSERT [dbo].[ChitietNhap] ([Mactn], [MaPN], [MaHH], [Soluong], [Tien], [Dongia]) VALUES (N'ctn010    ', N'pn010     ', N'hh010          ', 5, 24000, 12000)
INSERT [dbo].[ChitietNhap] ([Mactn], [MaPN], [MaHH], [Soluong], [Tien], [Dongia]) VALUES (N'ctn011    ', N'pn001     ', N'hh011          ', 6, 8000, 4000)
INSERT [dbo].[ChitietNhap] ([Mactn], [MaPN], [MaHH], [Soluong], [Tien], [Dongia]) VALUES (N'ctn012    ', N'pn002     ', N'hh012          ', 2, 180000, 45000)
INSERT [dbo].[ChitietNhap] ([Mactn], [MaPN], [MaHH], [Soluong], [Tien], [Dongia]) VALUES (N'ctn013    ', N'pn003     ', N'hh013          ', 2, 120000, 40000)
INSERT [dbo].[ChitietNhap] ([Mactn], [MaPN], [MaHH], [Soluong], [Tien], [Dongia]) VALUES (N'ctn014    ', N'pn001     ', N'hh014          ', 2, 8000000, 4000000)
INSERT [dbo].[ChitietNhap] ([Mactn], [MaPN], [MaHH], [Soluong], [Tien], [Dongia]) VALUES (N'ctn015    ', N'pn005     ', N'hh015          ', 2, 720000, 360000)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh001          ', N'Laptop Dell', N'Laptop', N'chiếc', N'2,2kg          ', 100000000, NULL, NULL, 83)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh002          ', N'Giầy NiKe', N'Thời trang', N'đôi', N'0,4kg          ', 2000000, NULL, NULL, 55)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh003          ', N'Cocacola', N'Thực phẩm', N'chai', N'1,5l           ', 20000, NULL, NULL, 66)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh004          ', N'Sữa Tươi', N'Thực phẩm', N'chai', N'1l             ', 60000, NULL, NULL, 14)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh005          ', N'Ti vi Sony', N'Đồ điện tử', N'cái', N'2kg            ', 50000000, NULL, NULL, 83)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh006          ', N'Iphone', N'Đồ điện tử', N'chiếc', N'0,4kg          ', 6000000, NULL, NULL, 97)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh007          ', N'SamSung Galasy', N'Đồ điện tử', N'cái', N'2,4kg          ', 700000, NULL, NULL, 96)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh008          ', N'Gà rán KFC', N'Thực phẩm', N'chiếc', N'250gram        ', 15000, NULL, NULL, 59)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh009          ', N'Bò húc', N'Thực phẩm', N'chai', N'350ml          ', 10000, NULL, NULL, 99)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh010          ', N'Trà sữa', N'Thực phẩm', N'túi', N'200mk          ', 15000, NULL, NULL, 95)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh011          ', N'Kem', N'Thực phẩm', N'que', N'1              ', 5000, NULL, NULL, 91)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh012          ', N'Sữa Tắm', N'Mỹ phẩm', N'lọ', N'0,5kg          ', 45000, NULL, NULL, 86)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh013          ', N'Dầu Gội', N'Mỹ phẩm', N'lọ', N'400gram        ', 40000, NULL, NULL, 99)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh014          ', N'Máy Giặt', N'Đồ điện tử', N'cái', N'5kg            ', 5000000, NULL, NULL, 85)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh015          ', N'Áo vet', N'Thời trang', N'chiếc', N'1              ', 450000, NULL, NULL, 84)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh016          ', N'Áo dài', N'Thời trang', N'chiếc', N'1              ', 200000, NULL, NULL, 83)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh017          ', N'Áo sơmi', N'Thời trang', N'chiếc', N'1              ', 3500000, NULL, NULL, 82)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh018          ', N'Túi sách', N'Thời trang', N'cái', N'2kg            ', 1200000, NULL, NULL, 72)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh019          ', N'Mũ chai', N'Thời trang', N'cái', NULL, 100000, NULL, NULL, 78)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [ChungLoai], [DonViTinh], [TrongLuong], [GiaBan], [NoiSX], [HSD], [Soluong]) VALUES (N'hh020          ', N'Thịt bò Mỹ', N'Thực phẩm', N'hộp', N'1kg            ', 450000, NULL, NULL, 90)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [Ngaylap], [VAT], [Tongtien]) VALUES (N'12        ', N'nv002     ', N'kh002     ', CAST(N'2017-03-28 09:58:52.357' AS DateTime), 0.10000000149011612, 30000000)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [Ngaylap], [VAT], [Tongtien]) VALUES (N'hd001     ', N'nv001     ', N'kh001     ', CAST(N'2017-03-25 10:26:38.000' AS DateTime), 0.10000000149011612, 213800000)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [Ngaylap], [VAT], [Tongtien]) VALUES (N'hd002     ', N'nv001     ', N'kh001     ', CAST(N'2017-03-27 20:57:12.207' AS DateTime), 0.10000000149011612, 78120000)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [Ngaylap], [VAT], [Tongtien]) VALUES (N'hd003     ', N'nv002     ', NULL, NULL, 0.1, 900000000)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [Ngaylap], [VAT], [Tongtien]) VALUES (N'hd004     ', N'nv002     ', NULL, NULL, 0.1, 44000000)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [Ngaylap], [VAT], [Tongtien]) VALUES (N'hd005     ', N'nv003     ', NULL, NULL, 0.1, 70855000)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [Ngaylap], [VAT], [Tongtien]) VALUES (N'hd006     ', N'nv003     ', NULL, NULL, 0.1, 36090000)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [Ngaylap], [VAT], [Tongtien]) VALUES (N'hd007     ', N'nv009     ', NULL, NULL, 0.1, 5475000)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [Ngaylap], [VAT], [Tongtien]) VALUES (N'hd008     ', N'nv009     ', NULL, NULL, 0.1, 2520000)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [Ngaylap], [VAT], [Tongtien]) VALUES (N'hd009     ', N'nv009     ', NULL, NULL, 0.1, 720000)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [Ngaylap], [VAT], [Tongtien]) VALUES (N'hd010     ', N'nv001     ', NULL, NULL, 0.1, 93100000)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh001     ', N'Nguyễn Văn Dũng', NULL, N'Nam', NULL, 120)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh002     ', N'Phí Anh Dũng', NULL, N'Nam', NULL, 10)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh003     ', N'Nguyễn Đức Mạnh', NULL, N'Nam', NULL, 330)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh004     ', N'Đỗ văn Mạnh', NULL, N'Nam', NULL, 9)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh005     ', N'Đỗ Hữu Tuyến', NULL, N'Nam', NULL, 51)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh006     ', N'Hoàng Đức Minh', NULL, N'Nam', NULL, 34)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh007     ', N'Lê Thị Thủy', NULL, N'Nữ', NULL, 198)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh008     ', N'Nguyễn Thùy Linh', NULL, N'Nữ', NULL, 63)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh009     ', N'Đào Bá Lợi', NULL, N'Nam', NULL, 11)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh010     ', N'Nguyễn Anh Tuấn', NULL, N'Nam', NULL, 79)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh011     ', N'Đỗ Quốc Bảo', NULL, N'Nam', NULL, 54)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh012     ', N'Nguyễn Thùy Trang', NULL, N'Nữ', NULL, 450)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh013     ', N'Lê Trọng Tấn', NULL, N'Nam', NULL, 444)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh014     ', N'Đỗ Thu Thảo', NULL, N'Nữ', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh015     ', N'Nguyễn Quốc Cường', NULL, N'Nam', NULL, 790)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh016     ', N'Nguyễn Thùy Chi', NULL, N'Nữ', NULL, 222)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh017     ', N'Nguyễn Thu Hằng', NULL, N'Nữ', NULL, 51)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh018     ', N'Lê Thị Mỹ Hạnh', NULL, N'Nữ', NULL, 111)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh019     ', N'Nguyễn Thu Phương', NULL, N'Nữ', NULL, 88)
INSERT [dbo].[KhachHang] ([MaKh], [TenKH], [Diachi], [GioiTinh], [SDT], [diem]) VALUES (N'kh020     ', N'Lê Thị Thơm', NULL, N'Nữ', NULL, 566)
INSERT [dbo].[KhoHang] ([MaKho], [TenKho], [MaThuKho], [DiaChi]) VALUES (N'kho01     ', N'Kho Hàng Trung Tâm', N'nv005     ', NULL)
INSERT [dbo].[KhoHang] ([MaKho], [TenKho], [MaThuKho], [DiaChi]) VALUES (N'kho02     ', N'Kho Hàng dự bị', N'nv006     ', NULL)
INSERT [dbo].[KhoHang] ([MaKho], [TenKho], [MaThuKho], [DiaChi]) VALUES (N'kho03     ', N'Kho Hàng Bí Mật', N'nv007     ', NULL)
INSERT [dbo].[KhoHang] ([MaKho], [TenKho], [MaThuKho], [DiaChi]) VALUES (N'kho04     ', N'Kho Hàng Liên Thông', N'nv008     ', NULL)
INSERT [dbo].[KhoHang] ([MaKho], [TenKho], [MaThuKho], [DiaChi]) VALUES (N'kho05     ', N'Kho Hàng Tồn Kho', N'nv010     ', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [Gioitinh], [DiaChi], [SDT]) VALUES (N'nv001     ', N'Nguyễn Thu Thảo', N'NV bán hàng', N'Nữ', NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [Gioitinh], [DiaChi], [SDT]) VALUES (N'nv002     ', N'Lê Thị Lệ', N'NV bán hàng', N'Nữ', NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [Gioitinh], [DiaChi], [SDT]) VALUES (N'nv003     ', N'Nguyễn Thị Thùy Linh', N'NV bán hàng', N'Nữ', NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [Gioitinh], [DiaChi], [SDT]) VALUES (N'nv004     ', N'Nguyễn Văn Dũng', N'Quản lí', N'Nam', NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [Gioitinh], [DiaChi], [SDT]) VALUES (N'nv005     ', N'Nguyễn Đức Mạnh', N'Thủ kho', N'Nam', NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [Gioitinh], [DiaChi], [SDT]) VALUES (N'nv006     ', N'Ngọ Văn Trình', N'Thủ kho', N'Nam', NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [Gioitinh], [DiaChi], [SDT]) VALUES (N'nv007     ', N'Đỗ Đức Duy', N'Thủ kho', N'Nam', NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [Gioitinh], [DiaChi], [SDT]) VALUES (N'nv008     ', N'Đào Bá Luyến', N'Thủ kho', N'Nam', NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [Gioitinh], [DiaChi], [SDT]) VALUES (N'nv009     ', N'Nguyễn Thu Hương', N'Nv Bán Hàng', N'Nữ', NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [Gioitinh], [DiaChi], [SDT]) VALUES (N'nv010     ', N'Nguyễn Thị Tố Như', N'Thủ kho', N'Nữ', NULL, NULL)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaThuKho], [MaKho], [Ngaylap], [VAT], [Tongtien]) VALUES (N'pn001     ', N'nv005     ', N'kho01     ', CAST(N'2017-03-30 22:01:25.747' AS DateTime), 0.10000000149011612, 24008000)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaThuKho], [MaKho], [Ngaylap], [VAT], [Tongtien]) VALUES (N'pn002     ', N'nv006     ', N'kho02     ', NULL, NULL, 8240000)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaThuKho], [MaKho], [Ngaylap], [VAT], [Tongtien]) VALUES (N'pn003     ', N'nv007     ', N'kho03     ', NULL, NULL, 180000)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaThuKho], [MaKho], [Ngaylap], [VAT], [Tongtien]) VALUES (N'pn004     ', N'nv008     ', N'kho04     ', NULL, NULL, 96000)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaThuKho], [MaKho], [Ngaylap], [VAT], [Tongtien]) VALUES (N'pn005     ', N'nv010     ', N'kho05     ', NULL, NULL, 80720000)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaThuKho], [MaKho], [Ngaylap], [VAT], [Tongtien]) VALUES (N'pn006     ', N'nv005     ', N'kho01     ', NULL, NULL, 9600000)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaThuKho], [MaKho], [Ngaylap], [VAT], [Tongtien]) VALUES (N'pn007     ', N'nv006     ', N'kho02     ', NULL, NULL, 1120000)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaThuKho], [MaKho], [Ngaylap], [VAT], [Tongtien]) VALUES (N'pn008     ', N'nv007     ', N'kho03     ', NULL, NULL, 24000)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaThuKho], [MaKho], [Ngaylap], [VAT], [Tongtien]) VALUES (N'pn009     ', N'nv008     ', N'kho04     ', NULL, NULL, 16000)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaThuKho], [MaKho], [Ngaylap], [VAT], [Tongtien]) VALUES (N'pn010     ', N'nv009     ', N'kho05     ', NULL, NULL, 24000)
INSERT [dbo].[taikhoan] ([username], [password]) VALUES (N'admin                                             ', N'1                             ')
ALTER TABLE [dbo].[ChitietHoaDon]  WITH CHECK ADD  CONSTRAINT [CTHD_HD_FK] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChitietHoaDon] CHECK CONSTRAINT [CTHD_HD_FK]
GO
ALTER TABLE [dbo].[ChitietHoaDon]  WITH CHECK ADD  CONSTRAINT [CTHD_HH_FK] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[ChitietHoaDon] CHECK CONSTRAINT [CTHD_HH_FK]
GO
ALTER TABLE [dbo].[ChitietNhap]  WITH CHECK ADD  CONSTRAINT [CTN_HH_FK] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[ChitietNhap] CHECK CONSTRAINT [CTN_HH_FK]
GO
ALTER TABLE [dbo].[ChitietNhap]  WITH CHECK ADD  CONSTRAINT [CTN_PN_FK] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChitietNhap] CHECK CONSTRAINT [CTN_PN_FK]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [HD_KH_FK] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKh])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [HD_KH_FK]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [HD_NV_FK] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [HD_NV_FK]
GO
ALTER TABLE [dbo].[KhoHang]  WITH CHECK ADD  CONSTRAINT [KH_NV_FK] FOREIGN KEY([MaThuKho])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[KhoHang] CHECK CONSTRAINT [KH_NV_FK]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([MaThuKho])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [PN_KH_FK] FOREIGN KEY([MaKho])
REFERENCES [dbo].[KhoHang] ([MaKho])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [PN_KH_FK]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD CHECK  (([GioiTinh]=N'Nữ' OR [GioiTinh]='Nam'))
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([Gioitinh]=N'Nữ' OR [Gioitinh]='Nam'))
GO
/****** Object:  StoredProcedure [dbo].[get_cthd]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[get_cthd](@ma char(10))
as
begin
select MactHD as[Mã CTHD],TenHH as[Tên HH],cast(Dongia as int) as[Đơn giá],chitiethoadon.soluong as[Số Lượng],DonViTinh  as[DVT],cast(Tien as int) as[Tiền] from ChitietHoaDon,HangHoa
where ChitietHoaDon.MaHH=HangHoa.MaHH and MaHD=@ma
end
GO
/****** Object:  StoredProcedure [dbo].[get_ctn]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[get_ctn](@ma char(10))
as begin
select Mactn as[Mã CTN],TenHH as[Tên HH],chitietnhap.Soluong as [SL],Dongia as[Gia] ,Tien as[Tiền] from ChitietNhap,HangHoa
where HangHoa.MaHH=ChitietNhap.MaHH and MaPN=@ma
end
GO
/****** Object:  StoredProcedure [dbo].[get_HH]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[get_HH]
as begin
select MaHH as[Mã Hàng Hóa],TenHH as[Tên Hàng Hóa],ChungLoai as[Chủng Loại],DonViTinh as[Đơn vị tính],trongluong as [Trọng Lượng],
GiaBan as[Giá Bán],NoiSX as[ Nơi SX],HSD as[Hạn sử dụng] from HangHoa
end
GO
/****** Object:  StoredProcedure [dbo].[get_HH1]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[get_HH1](@ma char(15))
as begin
select MaHH as[Mã Hàng Hóa],TenHH as[Tên Hàng Hóa],ChungLoai as[Chủng Loại],DonViTinh as[Đơn vị tính],trongluong as [Trọng Lượng],
GiaBan as[Giá Bán],NoiSX as[ Nơi SX],HSD as[Hạn sử dụng] from HangHoa where MaHH=@ma
end
GO
/****** Object:  StoredProcedure [dbo].[get_HH2]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[get_HH2](@giaban1 float,@giaban2 float)
as begin
select MaHH as[Mã Hàng Hóa],TenHH as[Tên Hàng Hóa],ChungLoai as[Chủng Loại],DonViTinh as[Đơn vị tính],trongluong as [Trọng Lượng],
GiaBan as[Giá Bán],NoiSX as[ Nơi SX],HSD as[Hạn sử dụng] from HangHoa where GiaBan >@giaban1 and GiaBan<@giaban2
end
GO
/****** Object:  StoredProcedure [dbo].[get_HH3]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[get_HH3](@chungloai nvarchar(30))
as begin
select MaHH as[Mã Hàng Hóa],TenHH as[Tên Hàng Hóa],ChungLoai as[Chủng Loại],DonViTinh as[Đơn vị tính],trongluong as [Trọng Lượng],
GiaBan as[Giá Bán],NoiSX as[ Nơi SX],HSD as[Hạn sử dụng] from HangHoa where ChungLoai = @chungloai
end
GO
/****** Object:  StoredProcedure [dbo].[get_hoadon]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[get_hoadon]
as
begin

select MaHD as[Mã Hóa đơn],TenNV as[Tên NV],MaKH as[Mã KH],Ngaylap as[Ngày Lập],cast((VAT*100)as int) as[Thuế VAT(%)],cast(Tongtien as int) as[Tổng tiền] from HoaDon,NhanVien
where NhanVien.MaNV=HoaDon.MaNV
end

GO
/****** Object:  StoredProcedure [dbo].[get_kh]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[get_kh]
as
begin
select MaKh as [Mã Khách hàng],TenKH as [Tên Khách hàng],Diachi as[Địa chỉ],GioiTinh as [Giới tính],SDT ,diem as [Điểm] from KhachHang
end
GO
/****** Object:  StoredProcedure [dbo].[get_Kho]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[get_Kho]
as
begin
select MaKho as[Mã Kho], TenKho as[Tên Kho],TenNV as[Tên Thủ Kho],KhoHang.DiaChi as[Địa chỉ] from KhoHang,NhanVien
where NhanVien.MaNV=KhoHang.MaThuKho
end
GO
/****** Object:  StoredProcedure [dbo].[get_NV]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[get_NV]
as 
begin
select MaNV as [Mã NV], TenNV as[Tên NV],ChucVu as [Chức vụ],Gioitinh as [Giới tính],DiaChi as [Địa Chỉ],SDT  from NhanVien
end

GO
/****** Object:  StoredProcedure [dbo].[get_pn]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[get_pn]
as begin
select MaPN as[Mã PN],TenKho as [Tên Kho],TenNV as[Tên Thủ Kho],Ngaylap as[Ngày Lập],
cast((VAT*100)as int) as[Thuế VAT(%)],cast(Tongtien as int) as[Tổng tiền] from PhieuNhap,NhanVien,KhoHang
where PhieuNhap.MaKho=KhoHang.MaKho and PhieuNhap.MaThuKho=NhanVien.MaNV
end
GO
/****** Object:  StoredProcedure [dbo].[luu_tien]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[luu_tien](@mahd char(10),@tongtien float)
as begin
update HoaDon
set Tongtien=@tongtien
where MaHD=@mahd
end
GO
/****** Object:  StoredProcedure [dbo].[luu_tien_nhap]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[luu_tien_nhap](@mapn char(10),@tongtien float)
as
begin
update PhieuNhap
set Tongtien=@tongtien
where MaPN=@mapn
end
GO
/****** Object:  StoredProcedure [dbo].[sua_cthd]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sua_cthd](@macthd char(10),@mahh char(15),@dongia float,@sl int,@tien float)
as begin
update ChitietHoaDon
set MaHH=@mahh,
    Dongia =@dongia,
	soluong=@sl,
	Tien=@tien
	where MactHD=@macthd
end

GO
/****** Object:  StoredProcedure [dbo].[sua_ctn]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sua_ctn](@mactn char(10),@mahh char(15),@soluong int,@tien float,@dongia float)
as begin
update ChitietNhap
set MaHH=@mahh,
Soluong=@soluong,
Tien=@tien,
Dongia=@dongia
where Mactn=@mactn
end
GO
/****** Object:  StoredProcedure [dbo].[sua_hoadon]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sua_hoadon](@mahd char(10),@manv char(10),@makh char(10),@ngaylap datetime,@vat float)
as
begin
update HoaDon
set MaNV=@manv,
    MaKH=@makh,
	Ngaylap=@ngaylap,
	VAT=@vat
where MaHD=@mahd
end

GO
/****** Object:  StoredProcedure [dbo].[sua_kh]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sua_kh](@makh char(10),@tenkh nvarchar(50),@diachi nvarchar(50),@gt nvarchar(30),@sdt char(15),@diem int)
as begin
update KhachHang
set TenKH=@tenkh,
Diachi=@diachi,
GioiTinh=@gt,
SDT=@sdt,
diem=@diachi
where MaKh=@makh
end
GO
/****** Object:  StoredProcedure [dbo].[sua_nv]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sua_nv](@manv char(10),@tennv nvarchar(50),@chucvu nvarchar(50),@gt nvarchar(3),@diachi nvarchar(50),@sdt char(15))
as
begin
update NhanVien
set TenNV=@tennv,
    ChucVu=@chucvu,
	Gioitinh=@gt,
	DiaChi=@diachi,
	SDT=@sdt
	where MaNV=@manv
end
GO
/****** Object:  StoredProcedure [dbo].[sua_pn]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sua_pn](@mapn char(10),@mathukho char(10),@makho char(10),@ngaylap datetime,@vat float)
as begin
update PhieuNhap
set MaThuKho=@mathukho,
MaKho=@makho,
Ngaylap=@ngaylap,
VAT=@vat
where MaPN=@mapn
end
GO
/****** Object:  StoredProcedure [dbo].[them_cthd]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[them_cthd](@macthd char(10),@mahd char(10),@mahh char(15),@dongia float,@sl int,@tien float)
as 
begin
if exists(select macthd from ChitietHoaDon where MactHD=@macthd) print('khong them duoc')
else
insert into ChitietHoaDon values(@macthd,@mahd,@mahh,@dongia,@sl,@tien)
end

GO
/****** Object:  StoredProcedure [dbo].[them_ctn]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[them_ctn](@mactn char(10),@mapn char(10),@mahh char(15),@soluong int,@tien float,@dongia float)
as begin
if exists(select Mactn from ChitietNhap where Mactn=@mactn) print('khong them duoc')
else insert ChitietNhap values(@mactn,@mapn,@mahh,@soluong,@tien,@dongia)
end
GO
/****** Object:  StoredProcedure [dbo].[them_hoadon]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[them_hoadon](@mahd char(10),@manv char(10),@makh char(10),@ngaylap datetime,@vat float,@tongtien float)
as 
begin
if exists(select MaKH from HoaDon where MaHD=@mahd) print('khong them duoc')
else
insert into HoaDon(MaHD,MaNV,MaKH,Ngaylap,VAT,Tongtien) values(@mahd,@manv,@makh,@ngaylap,@vat,@tongtien )
end
GO
/****** Object:  StoredProcedure [dbo].[them_kh]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[them_kh](@makh char(10),@tenkh nvarchar(50),@diachi nvarchar(50),@gt nvarchar(30),@sdt char(15),@diem int)
as begin
if exists(select MaKh from KhachHang where MaKh=@makh) print('khong them duoc')
else insert KhachHang values(@makh,@tenkh,@diachi,@gt,@sdt,@diem)
end
GO
/****** Object:  StoredProcedure [dbo].[them_nv]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[them_nv](@manv char(10),@tennv nvarchar(50),@chucvu nvarchar(50),@gt nvarchar(3),@diachi nvarchar(50),@sdt char(15))
as
begin
if exists(select MaNV from NhanVien where Manv=@manv) print('khong them duoc')
else
insert NhanVien values(@manv,@tennv,@chucvu,@gt,@diachi,@sdt)
end
GO
/****** Object:  StoredProcedure [dbo].[them_pn]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[them_pn](@mapn char(10),@mathukho char(10),@makho char(10),@ngaylap datetime,@vat float,@tongtien float)
as
begin
if exists(select Mapn from phieunhap where MaPN=@mapn) print('khong them duoc')
else
insert PhieuNhap values(@mapn,@mathukho,@makho,@ngaylap,@vat,@tongtien)
end
GO
/****** Object:  StoredProcedure [dbo].[tk_ban]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[tk_ban]
as
select CTHD.MaHH as 'Mã HH', HH.TenHH as'Tên HH', sum(CTHD.soluong) as 'Số Lượng',CTHD.Dongia as 'Đơn Giá', sum(CTHD.Tien) as 'Tiền Thu'
from HoaDon HD, HangHoa HH, ChitietHoaDon CTHD
where HD.MaHD=CTHD.MaHD and CTHD.MaHH=HH.MaHH
group by CTHD.MaHH,HH.TenHH,CTHD.Dongia

GO
/****** Object:  StoredProcedure [dbo].[tk_nhap]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[tk_nhap]
as
select CTN.MaHH as 'Mã HH', HH.TenHH as'Tên HH', sum(CTN.Soluong) as 'Số Lượng', CTN.Dongia as 'Đơn Giá',(CTN.Tien) as 'Tiền Trả'
from ChitietNhap CTN, HangHoa HH,PhieuNhap PN
where CTn.MaHH=HH.MaHH and CTN.MaPN=PN.MaPN
group by CTN.MaHH,HH.TenHH, CTN.Dongia,CTN.Tien

GO
/****** Object:  StoredProcedure [dbo].[tkhh]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[tkhh]
as
select CTN.MaHH as 'Mã HH',HH.TenHH as'Tên HH',SLBD=100, sum( CTN.Soluong )as 'SL Nhập' ,sum(CTHD.soluong) as 'SL Bán', HH.Soluong as 'SL Còn'
from ChitietNhap CTN, HangHoa HH, ChitietHoaDon CTHD
where CTN.MaHH=HH.MaHH and HH.MaHH=CTHD.MaHH
group by CTN.MaHH, HH.TenHH, HH.Soluong
GO
/****** Object:  StoredProcedure [dbo].[xoa_cthd]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[xoa_cthd](@macthd char(10))
as begin
delete ChitietHoaDon where MactHD=@macthd
end
GO
/****** Object:  StoredProcedure [dbo].[xoa_ctn]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[xoa_ctn](@mactn char(10))
as begin
delete ChitietNhap where Mactn=@mactn
end
GO
/****** Object:  StoredProcedure [dbo].[xoa_hoadon]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[xoa_hoadon](@ma char(10))
as
begin
delete HoaDon
where MaHD=@ma
delete ChitietHoaDon
where MaHD=@ma
end
GO
/****** Object:  StoredProcedure [dbo].[xoa_kh]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[xoa_kh](@makh char(10))
as begin
delete KhachHang where MaKh=@makh
end
GO
/****** Object:  StoredProcedure [dbo].[xoa_nv]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[xoa_nv](@manv char(10))
as
begin
delete NhanVien
where MaNV=@manv
end 
GO
/****** Object:  StoredProcedure [dbo].[xoa_pn]    Script Date: 4/4/2017 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[xoa_pn](@mapn char(10))
as begin
delete ChitietNhap where maPN=@mapn
delete PhieuNhap where MaPN=@mapn
end
GO
