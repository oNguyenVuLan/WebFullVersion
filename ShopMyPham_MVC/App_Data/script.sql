USE [Electronic_Shop]
GO
/****** Object:  Table [dbo].[About]    Script Date: 6/16/2016 7:14:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[About](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[Detail] [ntext] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 6/16/2016 7:14:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Banner](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Link] [nvarchar](250) NULL,
	[Description] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[TypeID] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/16/2016 7:14:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[ShortName] [varchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 6/16/2016 7:14:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/16/2016 7:14:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Content] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Footer]    Script Date: 6/16/2016 7:14:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [varchar](50) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 6/16/2016 7:14:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[TypeID] [int] NULL,
	[ParentID] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 6/16/2016 7:14:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/16/2016 7:14:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerID] [bigint] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 6/16/2016 7:14:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductID] [bigint] NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Permission]    Script Date: 6/16/2016 7:14:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Permission](
	[UserGroupID] [varchar](20) NOT NULL,
	[RoleID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/16/2016 7:14:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[ShortName] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[MoreImages] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[IncludedVAT] [bit] NULL,
	[Quantity] [int] NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NULL,
	[TopHot] [datetime] NULL,
	[View] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/16/2016 7:14:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TypeBanner]    Script Date: 6/16/2016 7:14:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeBanner](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 6/16/2016 7:14:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](32) NULL,
	[GroupID] [varchar](20) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 6/16/2016 7:14:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserGroup](
	[ID] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [TypeID], [Status]) VALUES (1, N'/Data/images/1.jpg', 1, N'/trang-chu', NULL, NULL, NULL, NULL, NULL, 2, NULL)
INSERT [dbo].[Banner] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [TypeID], [Status]) VALUES (2, N'/Data/images/2.jpg', 2, N'/trang-chu', NULL, NULL, NULL, NULL, NULL, 2, NULL)
INSERT [dbo].[Banner] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [TypeID], [Status]) VALUES (3, N'/Data/images/3.jpg', 3, N'/trang-chu', NULL, NULL, NULL, NULL, NULL, 2, NULL)
INSERT [dbo].[Banner] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [TypeID], [Status]) VALUES (4, N'/Data/images/4.jpg', 4, N'/trang-chu', NULL, NULL, NULL, NULL, NULL, 2, NULL)
SET IDENTITY_INSERT [dbo].[Banner] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [ShortName], [DisplayOrder], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (3, N'Máy ảnh & Máy quay phim', N'may-anh', NULL, CAST(0x0000A61B00970C5B AS DateTime), 1, CAST(0x0000A6210118CEA7 AS DateTime), NULL, 1)
INSERT [dbo].[Category] ([ID], [Name], [ShortName], [DisplayOrder], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (7, N'Máy vi tính & Lapttop', N'laptop', NULL, CAST(0x0000A61B0099F7C2 AS DateTime), 1, CAST(0x0000A62101188102 AS DateTime), NULL, 1)
INSERT [dbo].[Category] ([ID], [Name], [ShortName], [DisplayOrder], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (9, N'Điện thoại & Table', N'dien-thoai', NULL, CAST(0x0000A61B009A3239 AS DateTime), 1, CAST(0x0000A6210118A9B1 AS DateTime), NULL, 1)
INSERT [dbo].[Category] ([ID], [Name], [ShortName], [DisplayOrder], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (10, N'Đồ gia dụng', N'do-gia-dung', NULL, CAST(0x0000A6210118E8AD AS DateTime), 1, CAST(0x0000A6210118A9B1 AS DateTime), NULL, 1)
INSERT [dbo].[Category] ([ID], [Name], [ShortName], [DisplayOrder], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (11, N'Đồ điện tử', N'do-dien-tu', NULL, CAST(0x0000A621011902D8 AS DateTime), 1, CAST(0x0000A6210118A9B1 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (1, N'Trang Chủ', N'/trang-chu', 1, N'bank', 1, 2, NULL)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (2, N'Sản Phẩm', N'/san-pham', 2, N'self', 1, 2, NULL)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (3, N'Giới thiệu', N'/gioi-thieu', 3, N'bank', 1, 2, NULL)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (4, N'Liên Hệ', N'/lien-he', 4, N'self', 1, 2, NULL)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (5, N'Bản Đồ', N'/ban-do', 5, N'self', 1, 2, NULL)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (6, N'Đồ điện tử', N'/do-dien-tu-11', 1, N'self', 1, 2, 2)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (7, N'Điện thoại & Máy tính bảng', N'/dien-thoai-9', 2, N'self', 1, 2, 2)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (8, N'Máy vi tính & Laptop', N'/laptop-7', 3, N'self', 1, 2, 2)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (9, N'Máy ảnh & Máy quay phim', N'/may-anh-3', 4, N'self', 1, 2, 2)
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[MenuType] ON 

INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (1, N'Menu Top')
INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (2, N'Menu Body')
INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (3, N'Menu Footer')
SET IDENTITY_INSERT [dbo].[MenuType] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [Status]) VALUES (1, CAST(0x0000A621016ACA08 AS DateTime), 2, 0)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [Status]) VALUES (2, CAST(0x0000A621016AD177 AS DateTime), 3, 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [Status]) VALUES (3, CAST(0x0000A62700024BAE AS DateTime), 2, 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [Status]) VALUES (4, CAST(0x0000A62700076361 AS DateTime), 2, 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [Status]) VALUES (5, CAST(0x0000A627000888E0 AS DateTime), 2, 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [Status]) VALUES (6, CAST(0x0000A627000ADB3D AS DateTime), 2, 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [Status]) VALUES (7, CAST(0x0000A627000C8EAF AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [ProductID], [OrderID], [Quantity], [Price]) VALUES (1, 3, 1, 2, CAST(8600000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [ProductID], [OrderID], [Quantity], [Price]) VALUES (3, 3, 3, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [ProductID], [OrderID], [Quantity], [Price]) VALUES (2, 4, 2, 2, CAST(13000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 5, 3, 1, CAST(15000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [ProductID], [OrderID], [Quantity], [Price]) VALUES (7, 5, 4, 1, CAST(15000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 6, 4, 2, CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 6, 5, 1, CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [ProductID], [OrderID], [Quantity], [Price]) VALUES (10, 6, 6, 1, CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [ProductID], [OrderID], [Quantity], [Price]) VALUES (12, 6, 7, 1, CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [ProductID], [OrderID], [Quantity], [Price]) VALUES (6, 7, 4, 2, CAST(12000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [ProductID], [OrderID], [Quantity], [Price]) VALUES (9, 7, 5, 1, CAST(12000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 7, 6, 1, CAST(12000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [ProductID], [OrderID], [Quantity], [Price]) VALUES (13, 7, 7, 1, CAST(12000000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [ShortName], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status], [TopHot], [View]) VALUES (1, N'Tủ Lạnh Sony', N'tu-lanh-sony', N'An toàn chất lượng số 1', N'/Data/images/17543_13632_tu-lanh-2-canh-123-lit-sanyo-sr-125rnss-mau-bac.jpg', NULL, CAST(4500000 AS Decimal(18, 0)), CAST(4000000 AS Decimal(18, 0)), NULL, 3, 10, N'<p>An to&agrave;n chất lượng</p>
', NULL, CAST(0x0000A620016B3922 AS DateTime), NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [ShortName], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status], [TopHot], [View]) VALUES (3, N'Iphone4', N'Iphone-4', N'Iphone 4', N'/Data/images/pic4.png', NULL, CAST(4300000 AS Decimal(18, 0)), CAST(4000000 AS Decimal(18, 0)), NULL, 10, 9, N'<p>Iphone</p>
', NULL, CAST(0x0000A620016BC6DE AS DateTime), NULL, NULL, NULL, 1, CAST(0x0000A69800000000 AS DateTime), NULL)
INSERT [dbo].[Product] ([ID], [Name], [ShortName], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status], [TopHot], [View]) VALUES (4, N'Tủ lạnh Panasonic', N'tu-lanh-panasonic', N'Tủ lạnh chất lượng cao, đảm bảo an toàn', N'/Data/images/preview-img5.jpg', NULL, CAST(6500000 AS Decimal(18, 0)), CAST(6500000 AS Decimal(18, 0)), NULL, 15, 10, N'<p>Tủ lạnh chất lượng cao, đảm bảo an to&agrave;n</p>
', NULL, CAST(0x0000A621011EE4CF AS DateTime), NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [ShortName], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status], [TopHot], [View]) VALUES (5, N'Iphone 6', N'Iphone-6', N'Iphone mới nhất 2015', N'/Data/images/images%20(1).jpg', NULL, CAST(15000000 AS Decimal(18, 0)), CAST(14800000 AS Decimal(18, 0)), NULL, 3, 9, N'<p>Iphone 6</p>
', NULL, CAST(0x0000A6210125F967 AS DateTime), NULL, NULL, NULL, 1, CAST(0x0000A69800000000 AS DateTime), NULL)
INSERT [dbo].[Product] ([ID], [Name], [ShortName], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status], [TopHot], [View]) VALUES (6, N'Máy ảnh Sony', N'may-anh-sony', N'Máy ảnh chất lượng tốt', N'/Data/images/camera2.jpg', NULL, CAST(5000000 AS Decimal(18, 0)), CAST(5000000 AS Decimal(18, 0)), NULL, 2, 3, N'<p>M&aacute;y ảnh chất lượng tốt , chụp ảnh sắc n&eacute;t</p>
', NULL, CAST(0x0000A62200013E11 AS DateTime), NULL, NULL, NULL, 1, CAST(0x0000A69800000000 AS DateTime), NULL)
INSERT [dbo].[Product] ([ID], [Name], [ShortName], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status], [TopHot], [View]) VALUES (7, N'Máy ảnh Canon', N'may-anh-canon', N'Máy chất lương tốt', N'/Data/images/canon-powershot-g1-x.jpg', NULL, CAST(12000000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), NULL, 3, 3, N'<p>M&aacute;y chất lương tốt</p>
', NULL, CAST(0x0000A62200030311 AS DateTime), NULL, NULL, NULL, 1, CAST(0x0000A69800000000 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'Add_Menu', N'Thêm mới menu')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'Add_Product', N'Thêm mới sản phẩm')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'Add_User', N'Thêm mới User')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'Delete_Menu', N'Xóa menu')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'Delete_Product', N'Xóa sản phẩm')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'Delete_User', N'Xóa user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'Edit_Menu', N'Cập nhật Menu')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'Edit_Product', N'Sửa thông tin sản phẩm')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'Edit_User', N'Sửa thông tin')
SET IDENTITY_INSERT [dbo].[TypeBanner] ON 

INSERT [dbo].[TypeBanner] ([ID], [Name]) VALUES (1, N'Banner Top')
INSERT [dbo].[TypeBanner] ([ID], [Name]) VALUES (2, N'Banner Body')
INSERT [dbo].[TypeBanner] ([ID], [Name]) VALUES (3, N'Banner Footer')
SET IDENTITY_INSERT [dbo].[TypeBanner] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [CreatedDate], [CreatedBy], [Status]) VALUES (1, N'admin', N'827ccb0eea8a706c4c34a16891f84e7b', N'ADMIN', N'Lương Văn Phúc', N'Nam Định', N'luongphuc1994hvktqs@gmail.com', N'0943668915', CAST(0x0000A619015A346B AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [CreatedDate], [CreatedBy], [Status]) VALUES (2, N'phuc', N'e10adc3949ba59abbe56e057f20f883e', N'MEMBER', N'Phạm Thị Hải Yến', N'Trực Ninh - Nam Đinh', N'luongphuc1994hvktqs@gmail.com', N'0943668915', CAST(0x0000A619015A4703 AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [CreatedDate], [CreatedBy], [Status]) VALUES (3, N'phuc luong', N'e10adc3949ba59abbe56e057f20f883e', N'MEMBER', N'Lương Văn Phúc', N'Nam Định', N'luongphuc1994hvktqs@gmail.com', N'0943668915', CAST(0x0000A62101694189 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'ADMIN', N'Quản trị viên')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MEMBER', N'Thành viên')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MOD', N'Quản trị web')
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Banner] ADD  CONSTRAINT [DF_Banner_DisplayOrder]  DEFAULT ((1)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Banner] ADD  CONSTRAINT [DF_Banner_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Status]  DEFAULT ('true') FOR [Status]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_View]  DEFAULT ((0)) FOR [View]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_GroupID]  DEFAULT ('MEMBER') FOR [GroupID]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Status]  DEFAULT ('true') FOR [Status]
GO
