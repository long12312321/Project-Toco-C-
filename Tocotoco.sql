USE [Toco]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 04/13/2021 15:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[Hoten] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[Sdt] [nvarchar](20) NOT NULL,
	[NhomQuyen] [int] NOT NULL,
 CONSTRAINT [PK__NguoiDun__D5B8C7F1108B795B] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau], [Hoten], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [NhomQuyen]) VALUES (N'admin', N'admin', N'Đàm Phương T', 0, CAST(0x32250B00 AS Date), N'Ho Chi Minh', N'0337544235', 1)
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau], [Hoten], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [NhomQuyen]) VALUES (N'mra', N'mra', N'Nguyen Van A', 1, CAST(0x65240B00 AS Date), N'Ha Noi', N'0394837462', 2)
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau], [Hoten], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [NhomQuyen]) VALUES (N'mrb', N'mrb', N'ABC', 1, CAST(0x46240B00 AS Date), N'Ha Noi', N'0384957324', 2)
/****** Object:  Table [dbo].[LienHe]    Script Date: 04/13/2021 15:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHe](
	[MaLienHe] [int] IDENTITY(1,1) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Sdt] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLienHe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioiThieu]    Script Date: 04/13/2021 15:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioiThieu](
	[NoiDung] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[GioiThieu] ([NoiDung]) VALUES (N'Luôn tâm huyết với việc khai thác nguồn nông sản Việt Nam để tạo ra những ly thức uống tươi ngon, an toàn và giàu giá trị dinh dưỡng, ToCoToCo mở cửa hàng đầu tiên vào năm 2013, mang trong mình lòng đam mê và khát vọng xây dựng một thương hiệu trà sữa thuần Việt, mang đậm hương vị quê hương.ToCoToCo tin rằng thưởng thức một ly trà sữa được pha chế từ trà Mộc Châu, trân châu từ sắn dây Nghệ An hay mứt dâu tằm từ Đà Lạt sẽ là những trải nghiệm hoàn toàn khác biệt và tuyệt vời nhất cho những khách hàng của mình.')
/****** Object:  Table [dbo].[DanhmucSanPham]    Script Date: 04/13/2021 15:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhmucSanPham](
	[MaDanhmuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__DanhmucS__9B709EB57F60ED59] PRIMARY KEY CLUSTERED 
(
	[MaDanhmuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DanhmucSanPham] ON
INSERT [dbo].[DanhmucSanPham] ([MaDanhmuc], [TenDanhMuc]) VALUES (1, N'Trà sữa')
INSERT [dbo].[DanhmucSanPham] ([MaDanhmuc], [TenDanhMuc]) VALUES (2, N'Trà trái cây')
INSERT [dbo].[DanhmucSanPham] ([MaDanhmuc], [TenDanhMuc]) VALUES (3, N'Đồ uống đặc biệt')
SET IDENTITY_INSERT [dbo].[DanhmucSanPham] OFF
/****** Object:  Table [dbo].[SanPham]    Script Date: 04/13/2021 15:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaDanhMuc] [int] NOT NULL,
	[TenSanPham] [nvarchar](50) NOT NULL,
	[Size] [nvarchar](20) NOT NULL,
	[ImgUrl] [nvarchar](100) NOT NULL,
	[Gia] [float] NOT NULL,
 CONSTRAINT [PK__SanPham__FAC7442D03317E3D] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [Size], [ImgUrl], [Gia]) VALUES (1, 1, N'  Hong Tra', N'M', N'images/hongtra.jpg', 25000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [Size], [ImgUrl], [Gia]) VALUES (2, 1, N'Match Đậu Đỏ', N'M', N'images/matchadaudo.jpg', 25000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [Size], [ImgUrl], [Gia]) VALUES (3, 1, N'O Long Trân Châu Kem', N'M', N'images/trasuakem.jpg', 25000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [Size], [ImgUrl], [Gia]) VALUES (4, 1, N'Trà Sữa Hoàng Gia', N'M', N'images/trasuahoanggia.jpg', 25000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [Size], [ImgUrl], [Gia]) VALUES (5, 1, N'Tiger Sugar', N'M', N'images/tigersugar.jpg', 25000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [Size], [ImgUrl], [Gia]) VALUES (6, 1, N'Trà Sữa Panda', N'M', N'images/trasuapanda.jpg', 25000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [Size], [ImgUrl], [Gia]) VALUES (7, 2, N'Hồng Long Bạch Ngọc', N'M', N'images/honglongbachngoc.jpg', 30000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [Size], [ImgUrl], [Gia]) VALUES (8, 2, N'Hồng Long Pha Lê Tuyết', N'M', N'images/honglongphatuyet.jpg', 30000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [Size], [ImgUrl], [Gia]) VALUES (9, 2, N'Hồng Trà Bưởi  Mật Ong', N'M', N'images/hongtrabuoimatong.jpg', 30000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [Size], [ImgUrl], [Gia]) VALUES (10, 2, N'Trà Dâu Tằm Pha Lê Tuyết', N'M', N'images/tradautam.jpg', 30000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [Size], [ImgUrl], [Gia]) VALUES (11, 2, N'Trà Xanh', N'M', N'images/traxanh.jpg', 30000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [Size], [ImgUrl], [Gia]) VALUES (12, 2, N'Trà Xanh Chanh Leo', N'M', N'images/traxanhchanhleo.jpg', 30000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [Size], [ImgUrl], [Gia]) VALUES (13, 3, N'Chanh Leo Trân Châu Sương Mai', N'M', N'images/chanhleo.jpg', 40000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [Size], [ImgUrl], [Gia]) VALUES (14, 3, N'Hồng Long Xoài Trân Châu', N'M', N'images/honglong.jpg', 40000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [Size], [ImgUrl], [Gia]) VALUES (15, 3, N'Xoài Trân Châu Sương Mai', N'M', N'images/xoai.jpg', 40000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [Size], [ImgUrl], [Gia]) VALUES (16, 3, N'CATCHER CAFE', N'M', N'images/Cream.jpg', 40000)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
/****** Object:  Table [dbo].[DonHang]    Script Date: 04/13/2021 15:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[NgayDatHang] [datetime] NOT NULL,
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[Total] [float] NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[Sdt] [nvarchar](20) NOT NULL,
	[Hoten] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
 CONSTRAINT [PK__DonHang__129584AD38996AB5] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON
INSERT [dbo].[DonHang] ([MaDonHang], [NgayDatHang], [TaiKhoan], [Total], [DiaChi], [Sdt], [Hoten], [NgaySinh]) VALUES (6, CAST(0x0000ACFD00000000 AS DateTime), N'mra', 75000, N'Ha Noi', N'0394837462', N'Nguyen Van A', CAST(0x65240B00 AS Date))
INSERT [dbo].[DonHang] ([MaDonHang], [NgayDatHang], [TaiKhoan], [Total], [DiaChi], [Sdt], [Hoten], [NgaySinh]) VALUES (7, CAST(0x0000ACFD00000000 AS DateTime), N'mrb', 25000, N'Ha Noi', N'0384957324', N'ABC', CAST(0x46240B00 AS Date))
INSERT [dbo].[DonHang] ([MaDonHang], [NgayDatHang], [TaiKhoan], [Total], [DiaChi], [Sdt], [Hoten], [NgaySinh]) VALUES (8, CAST(0x0000ACFD00000000 AS DateTime), N'mra', 25000, N'Ha Noi', N'0394837462', N'Nguyen Van A', CAST(0x65240B00 AS Date))
INSERT [dbo].[DonHang] ([MaDonHang], [NgayDatHang], [TaiKhoan], [Total], [DiaChi], [Sdt], [Hoten], [NgaySinh]) VALUES (9, CAST(0x0000ACFE00000000 AS DateTime), N'mra', 100000, N'Ha Noi', N'0394837462', N'Nguyen Van A', CAST(0x65240B00 AS Date))
SET IDENTITY_INSERT [dbo].[DonHang] OFF
/****** Object:  Table [dbo].[DonHangChiTiet]    Script Date: 04/13/2021 15:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHangChiTiet](
	[MaDonHangCT] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[MaDonHang] [int] NOT NULL,
	[TenSanPham] [nvarchar](50) NOT NULL,
	[Gia] [float] NOT NULL,
	[SoLuongSP] [int] NOT NULL,
 CONSTRAINT [PK__DonHangC__A906DF67182C9B23] PRIMARY KEY CLUSTERED 
(
	[MaDonHangCT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DonHangChiTiet] ON
INSERT [dbo].[DonHangChiTiet] ([MaDonHangCT], [MaSanPham], [MaDonHang], [TenSanPham], [Gia], [SoLuongSP]) VALUES (1, 1, 6, N'  Hong Tra', 25000, 2)
INSERT [dbo].[DonHangChiTiet] ([MaDonHangCT], [MaSanPham], [MaDonHang], [TenSanPham], [Gia], [SoLuongSP]) VALUES (2, 2, 6, N'Match Đậu Đỏ', 25000, 1)
INSERT [dbo].[DonHangChiTiet] ([MaDonHangCT], [MaSanPham], [MaDonHang], [TenSanPham], [Gia], [SoLuongSP]) VALUES (3, 1, 7, N'  Hong Tra', 25000, 1)
INSERT [dbo].[DonHangChiTiet] ([MaDonHangCT], [MaSanPham], [MaDonHang], [TenSanPham], [Gia], [SoLuongSP]) VALUES (4, 1, 8, N'  Hong Tra', 25000, 1)
INSERT [dbo].[DonHangChiTiet] ([MaDonHangCT], [MaSanPham], [MaDonHang], [TenSanPham], [Gia], [SoLuongSP]) VALUES (5, 1, 9, N'  Hong Tra', 25000, 2)
INSERT [dbo].[DonHangChiTiet] ([MaDonHangCT], [MaSanPham], [MaDonHang], [TenSanPham], [Gia], [SoLuongSP]) VALUES (6, 2, 9, N'Match Đậu Đỏ', 25000, 2)
SET IDENTITY_INSERT [dbo].[DonHangChiTiet] OFF
/****** Object:  ForeignKey [FK_DonHang_NguoiDung]    Script Date: 04/13/2021 15:40:20 ******/
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_NguoiDung] FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[NguoiDung] ([TaiKhoan])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_NguoiDung]
GO
/****** Object:  ForeignKey [FK__DonHangCh__MaSan__1B0907CE]    Script Date: 04/13/2021 15:40:20 ******/
ALTER TABLE [dbo].[DonHangChiTiet]  WITH CHECK ADD  CONSTRAINT [FK__DonHangCh__MaSan__1B0907CE] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[DonHangChiTiet] CHECK CONSTRAINT [FK__DonHangCh__MaSan__1B0907CE]
GO
/****** Object:  ForeignKey [FK_DonHangChiTiet_DonHang]    Script Date: 04/13/2021 15:40:20 ******/
ALTER TABLE [dbo].[DonHangChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_DonHangChiTiet_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[DonHangChiTiet] CHECK CONSTRAINT [FK_DonHangChiTiet_DonHang]
GO
/****** Object:  ForeignKey [FK__SanPham__MaDanhM__0519C6AF]    Script Date: 04/13/2021 15:40:20 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK__SanPham__MaDanhM__0519C6AF] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhmucSanPham] ([MaDanhmuc])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK__SanPham__MaDanhM__0519C6AF]
GO
