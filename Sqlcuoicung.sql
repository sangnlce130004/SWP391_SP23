USE [ProjectBicycle]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/21/2023 6:56:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cate_id] [nchar](10) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[img] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 3/21/2023 6:56:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[img_id] [nchar](10) NOT NULL,
	[product_id] [nchar](10) NOT NULL,
	[img] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[img_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/21/2023 6:56:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [nchar](10) NOT NULL,
	[date] [date] NOT NULL,
	[address] [nvarchar](max) NOT NULL,
	[total_price] [float] NOT NULL,
	[voucher_id] [nchar](10) NULL,
	[user_id] [nchar](10) NOT NULL,
	[Status] [varchar](20) NULL,
	[shopping_method] [varchar](10) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_detail]    Script Date: 3/21/2023 6:56:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_detail](
	[quantity] [int] NOT NULL,
	[order_id] [nchar](10) NOT NULL,
	[product_id] [nchar](10) NOT NULL,
	[user_id] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/21/2023 6:56:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [nchar](10) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[unit_price] [float] NOT NULL,
	[amount] [int] NOT NULL,
	[description] [text] NOT NULL,
	[category_id] [nchar](10) NOT NULL,
	[img] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/21/2023 6:56:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [nchar](10) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping_Method]    Script Date: 3/21/2023 6:56:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping_Method](
	[ship_id] [int] NOT NULL,
	[ship_name] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Shipping_Method] PRIMARY KEY CLUSTERED 
(
	[ship_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Storage]    Script Date: 3/21/2023 6:56:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Storage](
	[storage_id] [int] IDENTITY(1,1) NOT NULL,
	[manufaturer] [varchar](30) NOT NULL,
	[importedDate] [date] NOT NULL,
	[quantity] [int] NOT NULL,
	[product_id] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Storage] PRIMARY KEY CLUSTERED 
(
	[storage_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/21/2023 6:56:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [nchar](10) NOT NULL,
	[username] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[phone] [decimal](18, 0) NOT NULL,
	[role_id] [nchar](10) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 3/21/2023 6:56:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[voucher_id] [nchar](10) NOT NULL,
	[fromDate] [date] NOT NULL,
	[toDate] [date] NOT NULL,
	[salePercent] [float] NOT NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[voucher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([cate_id], [name], [img]) VALUES (N'C01       ', N'Bicycle racing', N'images\Xe-dap-dua.jpg')
INSERT [dbo].[Category] ([cate_id], [name], [img]) VALUES (N'C02       ', N'Mountain bike', N'images\xe-dap-dia-hinh.jpg')
INSERT [dbo].[Category] ([cate_id], [name], [img]) VALUES (N'C03       ', N'Street bike', N'images\xe-dap-duong-pho.jpg')
INSERT [dbo].[Category] ([cate_id], [name], [img]) VALUES (N'C04       ', N'Performance bike', N'images\xe-dap-bieu-dien.jpg')
INSERT [dbo].[Category] ([cate_id], [name], [img]) VALUES (N'C05       ', N'Folding bicycles', N'images\xe-dap-gap.jpg')
INSERT [dbo].[Category] ([cate_id], [name], [img]) VALUES (N'C06       ', N'Bicycle without brakes', N'images\MTB_Java650.jpg')
GO
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I01       ', N'P01       ', N'images\Bàn phím ROG Strix Scope RX EVA Edition\ROG Strix Scope RX EVA Edition.png')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I02       ', N'P01       ', N'images\Bàn phím ROG Strix Scope RX EVA Edition\ROG Strix Scope RX EVA Edition (2).jpg')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I03       ', N'P01       ', N'images\Bàn phím ROG Strix Scope RX EVA Edition\ROG Strix Scope RX EVA Edition (3).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I04       ', N'P01       ', N'images\Bàn phím ROG Strix Scope RX EVA Edition\ROG Strix Scope RX EVA Edition (4).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I05       ', N'P01       ', N'images\Bàn phím ROG Strix Scope RX EVA Edition\ROG Strix Scope RX EVA Edition (5).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I06       ', N'P01       ', N'images\Bàn phím ROG Strix Scope RX EVA Edition\ROG Strix Scope RX EVA Edition (6).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I07       ', N'P02       ', N'images\Bàn phím ROG Falchion NX Red\ROG Falchion NX Red.png')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I08       ', N'P02       ', N'images\Bàn phím ROG Falchion NX Red\ROG Falchion NX Red (2).jpg')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I09       ', N'P02       ', N'images\Bàn phím ROG Falchion NX Red\ROG Falchion NX Red (3).jpg')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I10       ', N'P02       ', N'images\Bàn phím ROG Falchion NX Red\ROG Falchion NX Red (4).jpg')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I11       ', N'P03       ', N'images\Bàn phím ROG Strix Scope NX\ROG Strix Scope NX.png')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I12       ', N'P03       ', N'images\Bàn phím ROG Strix Scope NX\Bàn phím ROG Strix Scope NX (2).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I13       ', N'P03       ', N'images\Bàn phím ROG Strix Scope NX\Bàn phím ROG Strix Scope NX (3).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I14       ', N'P03       ', N'images\Bàn phím ROG Strix Scope NX\Bàn phím ROG Strix Scope NX (4).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I15       ', N'P04       ', N'images\Màn hình ROG SWIFT PG32UQX\ROG SWIFT PG32UQX.png')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I16       ', N'P04       ', N'images\Màn hình ROG SWIFT PG32UQX\ROG SWIFT PG32UQX (2).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I17       ', N'P04       ', N'images\Màn hình ROG SWIFT PG32UQX\ROG SWIFT PG32UQX (3).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I18       ', N'P04       ', N'images\Màn hình ROG SWIFT PG32UQX\ROG SWIFT PG32UQX (4).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I19       ', N'P04       ', N'images\Màn hình ROG SWIFT PG32UQX\ROG SWIFT PG32UQX (5).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I20       ', N'P05       ', N'images\Màn hình ROG Strix XG49VQ\ROG Strix XG49VQ.png')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I21       ', N'P05       ', N'images\Màn hình ROG Strix XG49VQ\ROG Strix XG49VQ (2).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I22       ', N'P05       ', N'images\Màn hình ROG Strix XG49VQ\ROG Strix XG49VQ (3).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I23       ', N'P05       ', N'images\Màn hình ROG Strix XG49VQ\ROG Strix XG49VQ (4).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I24       ', N'P06       ', N'images\Màn hình ROG Strix XG279Q-G\ROG Strix XG279Q-G.png')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I25       ', N'P06       ', N'images\Màn hình ROG Strix XG279Q-G\ROG Strix XG279Q-G (2).jpg')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I26       ', N'P06       ', N'images\Màn hình ROG Strix XG279Q-G\ROG Strix XG279Q-G (3).jpg')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I27       ', N'P06       ', N'images\Màn hình ROG Strix XG279Q-G\ROG Strix XG279Q-G (4).jpg')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I28       ', N'P06       ', N'images\Màn hình ROG Strix XG279Q-G\ROG Strix XG279Q-G (5).jpg')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I29       ', N'P07       ', N'images\Chuột ROG Gladius III Wireless\ROG Gladius III Wireless.png')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I30       ', N'P07       ', N'images\Chuột ROG Gladius III Wireless\ROG Gladius III Wireless (2).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I31       ', N'P07       ', N'images\Chuột ROG Gladius III Wireless\ROG Gladius III Wireless (3).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I32       ', N'P07       ', N'images\Chuột ROG Gladius III Wireless\ROG Gladius III Wireless (4).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I33       ', N'P08       ', N'images\Chuột ROG Spatha X\ROG Spatha X.png')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I34       ', N'P08       ', N'images\Chuột ROG Spatha X\ROG Spatha X (2).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I35       ', N'P08       ', N'images\Chuột ROG Spatha X\ROG Spatha X (3).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I36       ', N'P09       ', N'images\Chuột ROG Strix Impact II Moonlight White\ROG Strix Impact II Moonlight White.png')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I37       ', N'P09       ', N'images\Chuột ROG Strix Impact II Moonlight White\ROG Strix Impact II Moonlight White (2).jpg')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I38       ', N'P09       ', N'images\Chuột ROG Strix Impact II Moonlight White\ROG Strix Impact II Moonlight White (3).jpg')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I39       ', N'P09       ', N'images\Chuột ROG Strix Impact II Moonlight White\ROG Strix Impact II Moonlight White (4).jpg')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I40       ', N'P09       ', N'images\Chuột ROG Strix Impact II Moonlight White\ROG Strix Impact II Moonlight White (5).png')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I41       ', N'P10       ', N'images\Tai nghe ROG Delta S EVA Edition\ROG Delta S EVA Edition.png')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I42       ', N'P10       ', N'images\Tai nghe ROG Delta S EVA Edition\ROG Delta S EVA Edition (2).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I43       ', N'P10       ', N'images\Tai nghe ROG Delta S EVA Edition\ROG Delta S EVA Edition (3).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I44       ', N'P10       ', N'images\Tai nghe ROG Delta S EVA Edition\ROG Delta S EVA Edition (4).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I45       ', N'P11       ', N'images\Tai nghe ROG Delta S Animate\ROG Delta S Animate.png')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I46       ', N'P11       ', N'images\Tai nghe ROG Delta S Animate\ROG Delta S Animate (2).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I47       ', N'P11       ', N'images\Tai nghe ROG Delta S Animate\ROG Delta S Animate (3).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I48       ', N'P11       ', N'images\Tai nghe ROG Delta S Animate\ROG Delta S Animate (4).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I49       ', N'P11       ', N'images\Tai nghe ROG Delta S Animate\ROG Delta S Animate (5).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I50       ', N'P12       ', N'images\Tai nghe ROG Delta Gundam Edition\ROG Delta Gundam Edition.png')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I51       ', N'P12       ', N'images\Tai nghe ROG Delta Gundam Edition\ROG Delta Gundam Edition (2).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I52       ', N'P12       ', N'images\Tai nghe ROG Delta Gundam Edition\ROG Delta Gundam Edition (3).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I53       ', N'P12       ', N'images\Tai nghe ROG Delta Gundam Edition\ROG Delta Gundam Edition (4).webp')
INSERT [dbo].[Image] ([img_id], [product_id], [img]) VALUES (N'I54       ', N'P12       ', N'images\Tai nghe ROG Delta Gundam Edition\ROG Delta Gundam Edition (5).webp')
GO
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O001      ', CAST(N'2023-10-01' AS Date), N'Quận 4, TP HCM', 25490000, NULL, N'U004      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O002      ', CAST(N'2023-10-01' AS Date), N'Quận 1, TP HCM', 3389000, NULL, N'U001      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O003      ', CAST(N'2023-10-01' AS Date), N'Quận 7, TP HCM', 7792250, N'CZ3TY82   ', N'U003      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O004      ', CAST(N'2023-10-01' AS Date), N'Quận 7, TP HCM', 1500000, NULL, N'U010      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O005      ', CAST(N'2023-10-01' AS Date), N'Quận 2, TP HCM', 98900000, NULL, N'U005      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O006      ', CAST(N'2023-10-02' AS Date), N'Quận Bình Tân, TP HCM', 302290000, NULL, N'U001      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O007      ', CAST(N'2023-10-02' AS Date), N'Quận Bình Thạnh, TP HCM', 12430000, NULL, N'U007      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O008      ', CAST(N'2023-10-02' AS Date), N'Quận 6, TP HCM', 7890000, NULL, N'U004      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O009      ', CAST(N'2023-10-02' AS Date), N'Quận 4, TP HCM', 15780000, NULL, N'U009      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O010      ', CAST(N'2023-10-03' AS Date), N'Huyện Hóc Môn, TP HCM', 1044900, N'W23RYS0   ', N'U010      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O011      ', CAST(N'2023-10-03' AS Date), N'Quận 10, TP HCM', 19889000, NULL, N'U005      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O012      ', CAST(N'2023-10-03' AS Date), N'Quận Gò Vấp, TP HCM', 7890000, NULL, N'U001      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O013      ', CAST(N'2023-10-03' AS Date), N'Quận 2, TP HCM', 9890000, NULL, N'U003      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O014      ', CAST(N'2023-10-03' AS Date), N'Quận Bình Tân, TP HCM', 1978000, N'W23RYS0   ', N'U004      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O015      ', CAST(N'2023-10-04' AS Date), N'Quận Tân Phú, TP HCM', 8185656, NULL, N'U005      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O016      ', CAST(N'2023-10-04' AS Date), N'Quận 5, TP HCM', 5690000, NULL, N'U001      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O017      ', CAST(N'2023-10-04' AS Date), N'Quận 12, TP HCM', 3450000, NULL, N'U010      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O018      ', CAST(N'2023-10-04' AS Date), N'Quận 5, TP HCM', 3450000, NULL, N'U006      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O019      ', CAST(N'2023-10-30' AS Date), N'Ha Noi, Dong Da', 2540000, NULL, N'U001      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O020      ', CAST(N'2022-11-15' AS Date), N'dfdg', 931800, NULL, N'U010      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O021      ', CAST(N'2022-11-15' AS Date), N'Ã¨dtf', 2435465, NULL, N'U008      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O022      ', CAST(N'2022-11-15' AS Date), N'dfdg', 21474870, NULL, N'U001      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O023      ', CAST(N'2022-11-15' AS Date), N'gfgfgf', 3300000, NULL, N'U001      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O024      ', CAST(N'2022-11-15' AS Date), N'Soc Trang ', 1989200, NULL, N'U011      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O025      ', CAST(N'2022-11-17' AS Date), N'rtrtrtr', 310009, NULL, N'U001      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O026      ', CAST(N'2022-01-01' AS Date), N'gfgfg', 5454545, NULL, N'U001      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O027      ', CAST(N'2022-02-03' AS Date), N'fggfg', 4565567, NULL, N'U001      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O028      ', CAST(N'2022-03-23' AS Date), N'fgfgf', 6546565, NULL, N'U005      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O029      ', CAST(N'2022-04-24' AS Date), N'fdgfg', 5454544, NULL, N'U001      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O030      ', CAST(N'2022-05-21' AS Date), N'fgfgf', 5456567, NULL, N'U007      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O031      ', CAST(N'2022-06-12' AS Date), N'fdffg', 34343434, NULL, N'U009      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O032      ', CAST(N'2022-07-23' AS Date), N'gfgfgf', 35454596, NULL, N'U008      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O033      ', CAST(N'2022-08-23' AS Date), N'gfgfg', 5454567, NULL, N'U005      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O034      ', CAST(N'2023-09-21' AS Date), N'gffgfg', 24343434, NULL, N'U004      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O035      ', CAST(N'2022-09-13' AS Date), N'fgfghghj', 645674335, NULL, N'U004      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O036      ', CAST(N'2022-10-23' AS Date), N'fgtgfhgh', 56567776, NULL, N'U005      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O037      ', CAST(N'2022-12-23' AS Date), N'fgfg', 4545565, NULL, N'U010      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O038      ', CAST(N'2021-12-22' AS Date), N'Can tho', 485454563, NULL, N'U010      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O039      ', CAST(N'2021-11-12' AS Date), N'Sai gon', 545455655, NULL, N'U005      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O040      ', CAST(N'2020-11-11' AS Date), N'Soc trang', 645546543, NULL, N'U009      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O041      ', CAST(N'2023-03-16' AS Date), N'SÃ³c TrÄng ', 8430000, NULL, N'U001      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O042      ', CAST(N'2023-03-16' AS Date), N'SÃ³c TrÄng ', 30000, NULL, N'U001      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O043      ', CAST(N'2023-03-16' AS Date), N'SÃ³c TrÄng ', 6808000, NULL, N'U001      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O044      ', CAST(N'2023-03-16' AS Date), N'SÃ³c TrÄng ', 9920000, NULL, N'U012      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O045      ', CAST(N'2023-03-16' AS Date), N'SÃ³c TrÄng ', 21030000, NULL, N'U012      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O046      ', CAST(N'2023-03-16' AS Date), N'SÃ³c TrÄng ', 20364000, NULL, N'U012      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O047      ', CAST(N'2023-03-16' AS Date), N'SÃ³c TrÄng ', 12630000, NULL, N'U012      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O048      ', CAST(N'2023-03-16' AS Date), N'SÃ³c TrÄng ', 12630000, NULL, N'U012      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O049      ', CAST(N'2023-03-16' AS Date), N'SÃ³c TrÄng ', 7677000, NULL, N'U012      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O050      ', CAST(N'2023-03-16' AS Date), N'SÃ³c TrÄng ', 6010000, NULL, N'U012      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O051      ', CAST(N'2023-03-17' AS Date), N'SÃ³c TrÄng ', 10938890, NULL, N'U012      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O052      ', CAST(N'2023-03-18' AS Date), N'CÃ  Mau ', 3419000, NULL, N'U005      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O053      ', CAST(N'2023-03-18' AS Date), N'SÃ³c TrÄng ', 2018900, NULL, N'U007      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O054      ', CAST(N'2023-03-18' AS Date), N'SÃ³c TrÄng ', 2579000, NULL, N'U0201     ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O055      ', CAST(N'2023-03-18' AS Date), N'SÃ³c TrÄng ', 5720000, NULL, N'U008      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O056      ', CAST(N'2023-03-18' AS Date), N'SÃ³c TrÄng ', 5210000, NULL, N'U011      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O057      ', CAST(N'2023-03-18' AS Date), N'CÃ  Mau ', 7985600, NULL, N'U012      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O058      ', CAST(N'2023-03-18' AS Date), N'Soc trang', 5454545, NULL, N'U011      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O059      ', CAST(N'2023-03-19' AS Date), N'CÃ  Mau ', 4230000, NULL, N'U001      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O060      ', CAST(N'2023-03-19' AS Date), N'Can Tho ', 3419000, NULL, N'U001      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O061      ', CAST(N'2023-03-19' AS Date), N'SÃ³c TrÄng ', 4007800, NULL, N'U011      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O062      ', CAST(N'2023-03-19' AS Date), N'Can Tho ', 2464344, NULL, N'U001      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O063      ', CAST(N'2023-03-19' AS Date), N'SÃ³c TrÄng ', 3420000, NULL, N'U0201     ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O064      ', CAST(N'2023-03-21' AS Date), N'CÃ  Mau ', 4230000, NULL, N'U023      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O065      ', CAST(N'2023-03-21' AS Date), N'SÃ³c TrÄng ', 2579000, NULL, N'U023      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O066      ', CAST(N'2023-03-21' AS Date), N'Can Tho ', 2579000, NULL, N'U024      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O067      ', CAST(N'2023-03-21' AS Date), N'CÃ  Mau ', 6809000, NULL, N'U024      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O068      ', CAST(N'2023-03-21' AS Date), N'Can Tho ', 7116900, NULL, N'U025      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O069      ', CAST(N'2023-03-21' AS Date), N'SÃ³c TrÄng ', 2464344, NULL, N'U026      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O070      ', CAST(N'2023-03-21' AS Date), N'CÃ  Mau ', 2018900, NULL, N'U004      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O071      ', CAST(N'2023-03-21' AS Date), N'CÃ  Mau ', 4230000, NULL, N'U027      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O072      ', CAST(N'2023-03-21' AS Date), N'SÃ³c TrÄng ', 2018900, NULL, N'U027      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O073      ', CAST(N'2023-03-21' AS Date), N'Can Tho ', 9357000, NULL, N'U028      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O074      ', CAST(N'2023-03-21' AS Date), N'Can Tho ', 9920000, NULL, N'U028      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O075      ', CAST(N'2023-03-21' AS Date), N'CÃ  Mau ', 11988000, NULL, N'U029      ', N'Order Success', N'Slow')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O076      ', CAST(N'2023-03-21' AS Date), N'Can Tho ', 4230000, NULL, N'U023      ', N'Order Success', N'Fast')
INSERT [dbo].[Order] ([order_id], [date], [address], [total_price], [voucher_id], [user_id], [Status], [shopping_method]) VALUES (N'O077      ', CAST(N'2023-03-21' AS Date), N'Can Tho ', 5720000, NULL, N'U001      ', N'Order Success', N'Fast')
GO
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O001      ', N'P05       ', N'U004      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O002      ', N'P02       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O003      ', N'P11       ', N'U003      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O003      ', N'P10       ', N'U003      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O003      ', N'P06       ', N'U003      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O004      ', N'P09       ', N'U010      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O005      ', N'P04       ', N'U005      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (3, N'O006      ', N'P01       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O006      ', N'P10       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O007      ', N'P01       ', N'U007      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O007      ', N'P10       ', N'U007      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O007      ', N'P03       ', N'U007      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O008      ', N'P12       ', N'U004      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (2, N'O009      ', N'P12       ', N'U009      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O010      ', N'P10       ', N'U010      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O010      ', N'P04       ', N'U010      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O011      ', N'P06       ', N'U005      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O012      ', N'P12       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O013      ', N'P04       ', N'U003      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (2, N'O014      ', N'P04       ', N'U004      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O015      ', N'P10       ', N'U005      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O015      ', N'P07       ', N'U005      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O016      ', N'P11       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O017      ', N'P01       ', N'U010      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O018      ', N'P01       ', N'U006      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O001      ', N'P02       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O001      ', N'P01       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (4, N'O001      ', N'P03       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (3, N'O001      ', N'P01       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (10, N'O001      ', N'P02       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (2, N'O001      ', N'P06       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (7, N'O001      ', N'P05       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O010      ', N'P01       ', N'U010      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (27, N'O020      ', N'P01       ', N'U010      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O011      ', N'P06       ', N'U011      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (10, N'O024      ', N'P06       ', N'U011      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O011      ', N'P01       ', N'U011      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O011      ', N'P04       ', N'U011      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (2, N'O041      ', N'P01       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (2, N'O043      ', N'P02       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O044      ', N'P04       ', N'U012      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (5, N'O045      ', N'P01       ', N'U012      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (6, N'O046      ', N'P02       ', N'U012      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (3, N'O047      ', N'P01       ', N'U012      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (3, N'O048      ', N'P01       ', N'U012      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O050      ', N'P07       ', N'U012      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O050      ', N'P03       ', N'U012      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (2, N'O051      ', N'P16       ', N'U012      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O052      ', N'P02       ', N'U005      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O054      ', N'P05       ', N'U0201     ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O055      ', N'P11       ', N'U008      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O059      ', N'P01       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O060      ', N'P02       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O063      ', N'P03       ', N'U0201     ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O065      ', N'P05       ', N'U023      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O067      ', N'P02       ', N'U024      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O068      ', N'P06       ', N'U025      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O069      ', N'P17       ', N'U026      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O070      ', N'P06       ', N'U004      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O071      ', N'P01       ', N'U027      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O072      ', N'P06       ', N'U027      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (2, N'O073      ', N'P02       ', N'U028      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O073      ', N'P05       ', N'U028      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O076      ', N'P01       ', N'U023      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O077      ', N'P11       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (3, N'O049      ', N'P05       ', N'U012      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O053      ', N'P06       ', N'U007      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (2, N'O056      ', N'P07       ', N'U011      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (2, N'O061      ', N'P06       ', N'U011      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O064      ', N'P01       ', N'U023      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O066      ', N'P05       ', N'U024      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (2, N'O068      ', N'P05       ', N'U025      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O074      ', N'P04       ', N'U028      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (4, N'O057      ', N'P06       ', N'U012      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O062      ', N'P17       ', N'U001      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (1, N'O067      ', N'P03       ', N'U024      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (2, N'O075      ', N'P07       ', N'U029      ')
INSERT [dbo].[Order_detail] ([quantity], [order_id], [product_id], [user_id]) VALUES (2, N'O075      ', N'P02       ', N'U029      ')
GO
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P01       ', N'Bike K014', 4200000, 14, N'Trinx K014 2021 Bicycle is a new model launched by the company into the market with a sturdy steel frame design along with a starter kit from the Japanese brand. The vehicle can bear a maximum load of 130kg to help users feel secure without worrying about breaking the frame. The car has a smooth spring-loaded suspension system that damps down on rough roads.', N'C01       ', N'images/K014.jpg')
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P02       ', N'Bike M100Elite', 3389000, 10, N'A sports car with many advantages such as 27.5-inch wheels with hydraulic disc brakes, it is definitely an extremely good choice in the low-cost segment.
The 21-speed shimano movement system meets your sports requirements well
This vehicle is suitable for mixed roads, even offroad trips full of adventure', N'C01       ', N'images\M100Elite.jpg')
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P03       ', N'Bike Touring Merida Explorer X', 3390000, 15, N'The 29-inch Touring Merida Explorer X street bike impresses with its dynamic appearance and many subtle color versions and youthful sporty designs (color versions are available depending on the region and location). This car is not only a good car to meet your daily travel needs, but also a perfect "horse" for you to use on a long trip with a group.', N'C02       ', N'images\merida-explorer-x.jpg')
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P04       ', N'MTB Merida Victoria 500', 9890000, 21, N'MTB Merida Victoria 500 26-inch Size XS mountain bike has a strong, personality design that combines the Merida logo and many eye-catching motifs. You can use this model to go to work, school, cycling for exercise or for other transportation purposes.', N'C02       ', N'images\merida-victoria-500.jpg')
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P05       ', N'X-Caliber 9', 2549000, 4, N'Speed and distance are factors you care about and want a fast XC bike that will help you conquer more in less time. You are or are about to enter races, so you want the edge on the track with competitive levels.', N'C03       ', N'images\XCaliber9.jpg')
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P06       ', N'MTB Pacific OVERRIDE 5.0', 1988900, 10, N'Carrying a strong and energetic appearance, the MTB Pacific OVERRIDE 5.0 27.5-inch mountain bike is suitable for young people who are passionate about challenges, climbing and fitness, with many color versions. eye-catching for you to freely choose as you like (color versions are in stock depending on the region and time, the article uses the blue version for illustration).', N'C01       ', N'images/pacific-override-5.jpg')
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P07       ', N'MTB Giant ATX 660 ', 2590000, 28, N'MTB Giant ATX 660 (2022) 26-inch Size S mountain bike impresses at first sight with its robust design and trendy color versions (stock availability depends on region and time). This is a model that meets all your expectations, both used to go to school, go out, and conquer many types of terrain.', N'C03       ', N'images\giant-atx-660.jpg')
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P08       ', N'Bike M136Pro', 3250000, 41, N'Trinx M136 27.5 Inch sports bike is a famous Trinx sports bike with extremely modern design and configuration. Bringing users a perfect sports bike to ensure the best experience on every road. Trinx is a sports bike company that always brings to users exquisite and extremely quality bikes, with designs from Italy along with extremely high-class parts with 27.5 inch wheel size, Alloy frame. High-quality Trinx genuine aluminum and Shimano transmission all make the Trinx M136 a very interesting car from Trinx.', N'C03       ', N'images\M136Pro.jpg')
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P09       ', N'MTB Merida Warrior 300Ds', 1500000, 22, N'Designed in a sporty style combined with many outstanding color versions, the MTB Merida Warrior 300Ds dirt bike is a vehicle suitable for users who need mountain biking, health training or going to school, go to work every day.', N'C03       ', N'images\merida-warrior-300ds.jpg')
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P10       ', N'Dual Sport Bike 3', 5590000, 35, N'You need a light, fast, highly configurable bike that''s efficient for city, suburban or trail riding. You value confidence, stability, versatility and performance on recreational trips, fitness and multi-terrain commutes.', N'C04       ', N'images\Dual-Sport-3.jpg')
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P11       ', N'FX 3 Disc', 5690000, 25, N'You are a frequent cyclist, or a rider who is training for endurance and you want to spend more time cycling. You want a car that''s impressive, comfortable and built with high-quality parts that guarantee longer, longer trips, with better performance & driving experience.', N'C04       ', N'images\FX3Disc-1.jpg')
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P12       ', N'MTB Pacific BLIZZARD 6.0', 7890000, 11, N'MTB Pacific BLIZZARD 6.0 27.5-inch mountain bike has a dynamic sporty appearance with many unique color versions (available versions vary by region and time, the article is illustrated by the white version of the bike). ), suitable for users who love mountain biking, are passionate about exploring, conquering terrain or relaxing with family and friends.', N'C04       ', N'images\pacific-blizzard-6.jpg')
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P13       ', N'MTB Pacific Invert 2.0', 4343434, 10, N'The 27.5-inch MTB Pacific Invert 2.0 mountain bike has a novel color design with many modern color versions, suitable for all genders and ages. This model is suitable to be a close "companion" on all your journeys, from going to school, going to work, practicing sports or going on a long trip with friends. The color versions are in stock depending on the region and time, the article below uses the yellow version to illustrate the product.', N'C04       ', N'images\pacific-invert-2.jpg')
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P14       ', N'Touring Giant Escape 2 City', 2343444, 4, N'Street Bike Touring Giant Escape 2 City Dics (2022) 700C Size S attracts with its slim appearance but still brings a dynamic and healthy feeling with a variety of color versions (available depending on the region and region). time). The model meets the needs of going to school, going to work every day, going for a weekend walk or doing sports, improving health.', N'C05       ', N'images\giant-escape-2-city.jpg')
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P15       ', N'MTB Giant TALON 3', 3434334, 12, N'The MTB Giant TALON 3 (2022) 29-inch Size S mountain bike has a strong and dynamic sporty appearance, suitable for users who love mountain biking, are passionate about exploring and conquering the terrain. Or go on a relaxing trip with family and friends', N'C05       ', N'images\giant-talon-3.jpg')
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P16       ', N'MTB Java 650B-VETTA-27S-A', 5454445, 14, N'Java 650B VETTA 27S-A 27.5-inch size S mountain bike has an impressive appearance with a youthful design and many dynamic color versions (color versions are available depending on the region and time, the article uses use black version for illustration). This model is very suitable for dynamic young people who love to practice sports and explore new roads through trips, picnics, etc.', N'C06       ', N'images\java-650b-vetta-27s-a.jpg')
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P17       ', N'Road Java 700C-SILURO2-18S-1', 2434344, 15, N'With a strong appearance and many outstanding color versions, Road Java 700C-SILURO2-18S-1 700C Size S Sport Bike is suitable for cyclists who are passionate about exploring, conquering challenges or simply Simply exercise every day', N'C06       ', N'images\java-700c-siluro2-18s-1.jpg')
INSERT [dbo].[Product] ([product_id], [name], [unit_price], [amount], [description], [category_id], [img]) VALUES (N'P18       ', N'MTB Java 650B-DOLOMIA-24S', 3434545, 12, N'The 27.5-inch MTB Java 650B-DOLOMIA-24S mountain bike is designed in a strong, unique sports style. With outstanding color versions and quality appearance, this model promises to conquer the fastidious customers in the market.', N'C06       ', N'images\MTB_Java650.jpg')
GO
INSERT [dbo].[Role] ([role_id], [name]) VALUES (N'R01       ', N'Customer')
INSERT [dbo].[Role] ([role_id], [name]) VALUES (N'R02       ', N'Manager')
GO
INSERT [dbo].[Shipping_Method] ([ship_id], [ship_name]) VALUES (0, N'Slow      ')
INSERT [dbo].[Shipping_Method] ([ship_id], [ship_name]) VALUES (1, N'Fast      ')
GO
SET IDENTITY_INSERT [dbo].[Storage] ON 

INSERT [dbo].[Storage] ([storage_id], [manufaturer], [importedDate], [quantity], [product_id]) VALUES (2, N'Asus', CAST(N'2022-09-25' AS Date), 30, N'P01       ')
INSERT [dbo].[Storage] ([storage_id], [manufaturer], [importedDate], [quantity], [product_id]) VALUES (4, N'Asus', CAST(N'2022-09-24' AS Date), 25, N'P02       ')
INSERT [dbo].[Storage] ([storage_id], [manufaturer], [importedDate], [quantity], [product_id]) VALUES (5, N'Asus', CAST(N'2022-09-20' AS Date), 18, N'P03       ')
INSERT [dbo].[Storage] ([storage_id], [manufaturer], [importedDate], [quantity], [product_id]) VALUES (6, N'Asus', CAST(N'2022-09-15' AS Date), 24, N'P04       ')
INSERT [dbo].[Storage] ([storage_id], [manufaturer], [importedDate], [quantity], [product_id]) VALUES (7, N'Asus', CAST(N'2022-09-28' AS Date), 13, N'P05       ')
INSERT [dbo].[Storage] ([storage_id], [manufaturer], [importedDate], [quantity], [product_id]) VALUES (8, N'Asus', CAST(N'2022-09-11' AS Date), 16, N'P06       ')
INSERT [dbo].[Storage] ([storage_id], [manufaturer], [importedDate], [quantity], [product_id]) VALUES (9, N'Asus', CAST(N'2022-09-30' AS Date), 33, N'P07       ')
INSERT [dbo].[Storage] ([storage_id], [manufaturer], [importedDate], [quantity], [product_id]) VALUES (10, N'Asus', CAST(N'2022-09-14' AS Date), 41, N'P08       ')
INSERT [dbo].[Storage] ([storage_id], [manufaturer], [importedDate], [quantity], [product_id]) VALUES (11, N'Asus', CAST(N'2022-08-30' AS Date), 22, N'P09       ')
INSERT [dbo].[Storage] ([storage_id], [manufaturer], [importedDate], [quantity], [product_id]) VALUES (12, N'Asus', CAST(N'2022-09-17' AS Date), 35, N'P10       ')
INSERT [dbo].[Storage] ([storage_id], [manufaturer], [importedDate], [quantity], [product_id]) VALUES (13, N'Asus', CAST(N'2022-08-25' AS Date), 27, N'P11       ')
INSERT [dbo].[Storage] ([storage_id], [manufaturer], [importedDate], [quantity], [product_id]) VALUES (14, N'Asus', CAST(N'2022-09-22' AS Date), 14, N'P12       ')
SET IDENTITY_INSERT [dbo].[Storage] OFF
GO
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U001      ', N'CharlieAllan                                                                                                                                                                                                                     ', N'123456                                                                                                                                                                                                                            ', N'CharlieAllan@email.com                                                                                                                                                                                                           ', CAST(7932006363 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U002      ', N'JamesAlsop                                                                                                                                                                                                                       ', N'bfgwt                                                                                                                                                                                                                            ', N'JamesAlsop@email.com                                                                                                                                                                                                             ', CAST(7375891587 AS Decimal(18, 0)), N'R2        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U003      ', N'HazelAnderson                                                                                                                                                                                                                    ', N'bodvo                                                                                                                                                                                                                            ', N'HazelAnderson@email.com                                                                                                                                                                                                          ', CAST(9066678727 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U004      ', N'HenryArnold                                                                                                                                                                                                                      ', N'xgljk                                                                                                                                                                                                                            ', N'HenryArnold@email.com                                                                                                                                                                                                            ', CAST(2470193118 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U005      ', N'IvyAvery                                                                                                                                                                                                                         ', N'xiqxp                                                                                                                                                                                                                            ', N'IvyAvery@email.com                                                                                                                                                                                                               ', CAST(5301262798 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U006      ', N'AlexanderBailey                                                                                                                                                                                                                  ', N'orewn                                                                                                                                                                                                                            ', N'AlexanderBailey@email.com                                                                                                                                                                                                        ', CAST(2453161107 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U007      ', N'HunterBaker                                                                                                                                                                                                                      ', N'aekjn                                                                                                                                                                                                                            ', N'HunterBaker@email.com                                                                                                                                                                                                            ', CAST(4574696338 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U008      ', N'OliverBall                                                                                                                                                                                                                       ', N'bfsod                                                                                                                                                                                                                            ', N'OliverBall@email.com                                                                                                                                                                                                             ', CAST(9412658031 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U009      ', N'DanielBell                                                                                                                                                                                                                       ', N'dxtpu                                                                                                                                                                                                                            ', N'DanielBell@email.com                                                                                                                                                                                                             ', CAST(9677865665 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U010      ', N'OlandoCornel                                                                                                                                                                                                                     ', N'gsdhr                                                                                                                                                                                                                            ', N'OlandoCornel@email.com                                                                                                                                                                                                           ', CAST(7124578345 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U011      ', N'TaiNHCE', N'123456', N'Tai123@gmail.com ', CAST(369001009 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U012      ', N'HuuTai', N'1234567', N'Tainhce150819@gmail.com', CAST(369001119 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U014      ', N'taius', N'1234567', N'taius@gmaail.com', CAST(369001009 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U015      ', N'Nguyá»n Há»¯u TÃ i ', N'1234567', N'taingu@gmail.com', CAST(369001009 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U020      ', N'taipro', N'123456', N'taiprovip@gmail.com ', CAST(546567778878 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U0200     ', N'TaiSmile ', N'1234567', N'taismile@gmail.com', CAST(369001009 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U0201     ', N'Jiro', N'123456', N'Jiro@gmail.com', CAST(793858121 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U021      ', N'taitrau', N'123456', N'taitrau@gmail.com', CAST(545567676 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U022      ', N'taicho ', N'123456', N'taicho@gmail.com', CAST(233245656 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U023      ', N'NHT', N'123456', N'taiadmin123@gmail.com', CAST(369001009 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U024      ', N'NHTTT', N'123456', N'tainttt@gmail.com', CAST(369001009 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U025      ', N'tan ', N'123456', N'tan@gmail.com', CAST(369001009 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U026      ', N'alodlo', N'123456', N'alo@gmail.com', CAST(369001009 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U027      ', N'ga', N'123456', N'ga@gmail.com', CAST(369001009 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U028      ', N'NHT', N'123456', N'ga1@gmail.com', CAST(369001009 AS Decimal(18, 0)), N'R1        ')
INSERT [dbo].[User] ([user_id], [username], [password], [email], [phone], [role_id]) VALUES (N'U029      ', N'Sang ', N'123456', N'Sang@gmail.com', CAST(369001009 AS Decimal(18, 0)), N'R1        ')
GO
INSERT [dbo].[Voucher] ([voucher_id], [fromDate], [toDate], [salePercent]) VALUES (N'2WSYK81   ', CAST(N'2022-10-09' AS Date), CAST(N'2022-11-09' AS Date), 0.1)
INSERT [dbo].[Voucher] ([voucher_id], [fromDate], [toDate], [salePercent]) VALUES (N'CZ3TY82   ', CAST(N'2022-10-01' AS Date), CAST(N'2022-11-01' AS Date), 0.25)
INSERT [dbo].[Voucher] ([voucher_id], [fromDate], [toDate], [salePercent]) VALUES (N'EHS2B42   ', CAST(N'2022-10-05' AS Date), CAST(N'2022-11-05' AS Date), 0.15)
INSERT [dbo].[Voucher] ([voucher_id], [fromDate], [toDate], [salePercent]) VALUES (N'VE173RT   ', CAST(N'2022-10-07' AS Date), CAST(N'2022-11-07' AS Date), 0.2)
INSERT [dbo].[Voucher] ([voucher_id], [fromDate], [toDate], [salePercent]) VALUES (N'W23RYS0   ', CAST(N'2022-10-03' AS Date), CAST(N'2022-11-03' AS Date), 0.1)
GO
ALTER TABLE [dbo].[Order]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Voucher] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[Voucher] ([voucher_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Voucher]
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_detail_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[Order_detail] CHECK CONSTRAINT [FK_Order_detail_Order]
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_detail_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Order_detail] CHECK CONSTRAINT [FK_Order_detail_Product]
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_detail_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Order_detail] CHECK CONSTRAINT [FK_Order_detail_User]
GO
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([cate_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Storage]  WITH CHECK ADD  CONSTRAINT [FK_Storage_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Storage] CHECK CONSTRAINT [FK_Storage_Product]
GO
