USE [BANHANG]
GO
/****** Object:  Table [dbo].[CTHoaDon]    Script Date: 11/22/2019 8:07:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTHoaDon](
	[MaHD] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_CTHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 11/22/2019 8:07:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GioHang](
	[TenTaiKhoan] [varchar](20) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL DEFAULT ((1)),
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/22/2019 8:07:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [varchar](10) NOT NULL,
	[TenTaiKhoan] [varchar](20) NOT NULL,
	[NgayMua] [datetime] NULL,
	[DiaChiGiaoHang] [nvarchar](max) NULL,
	[SDTGiaoHang] [varchar](20) NULL,
	[TongTien] [int] NULL,
	[TrangThai] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 11/22/2019 8:07:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [varchar](10) NOT NULL,
	[TenLoaiSP] [nvarchar](100) NOT NULL,
	[TrangThai] [bit] NOT NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/22/2019 8:07:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](10) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[ThongTin] [nvarchar](max) NULL,
	[GiaTien] [int] NULL,
	[SoLuongTonKho] [int] NULL,
	[MaLoaiSP] [varchar](10) NULL,
	[AnhMinhHoa] [nvarchar](max) NULL,
	[TrangThai] [bit] NOT NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/22/2019 8:07:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTaiKhoan] [varchar](20) NOT NULL,
	[MatKhau] [varchar](20) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[SDT] [varchar](20) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[HoTen] [nvarchar](100) NULL,
	[LaAdmin] [bit] NOT NULL DEFAULT ((0)),
	[AnhDaiDien] [nvarchar](max) NULL,
	[TrangThai] [bit] NOT NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[GioHang] ([TenTaiKhoan], [MaSP], [SoLuong]) VALUES (N'heyday', N'SP006', 1)
INSERT [dbo].[GioHang] ([TenTaiKhoan], [MaSP], [SoLuong]) VALUES (N'heyday', N'SP007', 1)
INSERT [dbo].[GioHang] ([TenTaiKhoan], [MaSP], [SoLuong]) VALUES (N'nguyendat', N'SP001', 1)
INSERT [dbo].[GioHang] ([TenTaiKhoan], [MaSP], [SoLuong]) VALUES (N'nguyendat', N'SP006', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [TrangThai]) VALUES (N'LSP001', N'DSLR', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [TrangThai]) VALUES (N'LSP002', N'Mirrorless', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [TrangThai]) VALUES (N'LSP003', N'Compact', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [TrangThai]) VALUES (N'LSP004', N'Film', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [TrangThai]) VALUES (N'LSP005', N'Travel log', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [TrangThai]) VALUES (N'LSP006', N'Khác', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThongTin], [GiaTien], [SoLuongTonKho], [MaLoaiSP], [AnhMinhHoa], [TrangThai]) VALUES (N'SP001', N'Canon EOS RP', N'Canon Inc', 1335, 4, N'LSP005', N'1.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThongTin], [GiaTien], [SoLuongTonKho], [MaLoaiSP], [AnhMinhHoa], [TrangThai]) VALUES (N'SP002', N'Canon EOS R', N'Canon Inc', 2399, 8, N'LSP002', N'2.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThongTin], [GiaTien], [SoLuongTonKho], [MaLoaiSP], [AnhMinhHoa], [TrangThai]) VALUES (N'SP003', N'Canon EOS 3000D', N'Canon Inc', 399, 8, N'LSP006', N'3.png', 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThongTin], [GiaTien], [SoLuongTonKho], [MaLoaiSP], [AnhMinhHoa], [TrangThai]) VALUES (N'SP004', N'Canon EOS M6', N'Canon Inc', 599, 3, N'LSP003', N'4.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThongTin], [GiaTien], [SoLuongTonKho], [MaLoaiSP], [AnhMinhHoa], [TrangThai]) VALUES (N'SP005', N'Canon EOS 90D (body only)', N'Canon Inc', 1099, 7, N'LSP004', N'5.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThongTin], [GiaTien], [SoLuongTonKho], [MaLoaiSP], [AnhMinhHoa], [TrangThai]) VALUES (N'SP006', N'Canon EOS M5 (body only)', N'Canon Inc', 799, 10, N'LSP003', N'6.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThongTin], [GiaTien], [SoLuongTonKho], [MaLoaiSP], [AnhMinhHoa], [TrangThai]) VALUES (N'SP007', N'Canon EOS M5 + kit lens 15-45mm', N'Canon Inc', 399, 8, N'LSP003', N'7.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThongTin], [GiaTien], [SoLuongTonKho], [MaLoaiSP], [AnhMinhHoa], [TrangThai]) VALUES (N'SP008', N'Canon EOS M5 + kit lens ( EF-M 55-200mm)', N'Canon Inc', 1099, 1, N'LSP002', N'8.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThongTin], [GiaTien], [SoLuongTonKho], [MaLoaiSP], [AnhMinhHoa], [TrangThai]) VALUES (N'SP009', N'Canon EOS 6D mark II (body only)', N'Canon Inc', 549, 9, N'LSP006', N'9.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThongTin], [GiaTien], [SoLuongTonKho], [MaLoaiSP], [AnhMinhHoa], [TrangThai]) VALUES (N'SP010', N'Canon EOS 6D mark II  + lens kit', N'Canon Inc', 1999, 3, N'LSP005', N'10.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThongTin], [GiaTien], [SoLuongTonKho], [MaLoaiSP], [AnhMinhHoa], [TrangThai]) VALUES (N'SP011', N'Canon EOS 77D', N'Canon Inc', 899, 3, N'LSP006', N'11.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThongTin], [GiaTien], [SoLuongTonKho], [MaLoaiSP], [AnhMinhHoa], [TrangThai]) VALUES (N'SP012', N'Canon EOS 200D', N'Canon Inc', 499, 5, N'LSP005', N'12.png', 1)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [Email], [SDT], [DiaChi], [HoTen], [LaAdmin], [AnhDaiDien], [TrangThai]) VALUES (N'admin', N'admin', N'admin@webbanhang.com', N'01234567890', N'Tp.Hồ Chí Minh', N'Nguyễn Văn Ad Min', 1, NULL, 1)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [Email], [SDT], [DiaChi], [HoTen], [LaAdmin], [AnhDaiDien], [TrangThai]) VALUES (N'customer', N'123456', N'customer@gmail.com', N'0987654321', N'Huế', N'Trần Thị B', 0, NULL, 0)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [Email], [SDT], [DiaChi], [HoTen], [LaAdmin], [AnhDaiDien], [TrangThai]) VALUES (N'heyday', N'admin1', N'heyday@gmail.com', N'09080706005', N'q6', N'Lê Dương Hưng Thịnh', 0, N'', 1)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [Email], [SDT], [DiaChi], [HoTen], [LaAdmin], [AnhDaiDien], [TrangThai]) VALUES (N'mrdat', N'admin', N'nhun49747@gmail.com', N'0908070600', N'q1', N'phe van dat', 0, N'', 1)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [Email], [SDT], [DiaChi], [HoTen], [LaAdmin], [AnhDaiDien], [TrangThai]) VALUES (N'NGUYEN DAT', N'adadadad', N'nhun49747@gmail.com', N'0908070605', N'q12', N'nguyen quoc dat', 0, N'1', 0)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [Email], [SDT], [DiaChi], [HoTen], [LaAdmin], [AnhDaiDien], [TrangThai]) VALUES (N'nguyendat', N'adadadad', N'nhun49747@gmail.com', N'0908070600', N'q9', N'nguyen quoc dat', 0, N'1', 1)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [Email], [SDT], [DiaChi], [HoTen], [LaAdmin], [AnhDaiDien], [TrangThai]) VALUES (N'test1', N'123456', N'test@gmail.com', N'0905123456', N'Hà Nội', N'Nguyễn Văn A', 0, NULL, 1)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [Email], [SDT], [DiaChi], [HoTen], [LaAdmin], [AnhDaiDien], [TrangThai]) VALUES (N'thien', N'123', N'thien', N'61626', N'62t', N'thienle', 0, N'', 1)
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
