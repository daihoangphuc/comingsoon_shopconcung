USE [Quan_Ly_ShopConCung]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/20/2023 10:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b5f6dd06-301f-4103-8bb6-520a7525c28e', N'phuc@gmail.com', N'PHUC@GMAIL.COM', N'phuc@gmail.com', N'PHUC@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEP1rxZbay4fgKShnwQJmsNkJ28urCCwDCy/sPHgWrRzQwxztKHXEsYlggxRVdlgOtQ==', N'HBXDBMQAKCDZM2UW2ADPXIC7DPQ5J2Q6', N'647e4cec-a600-4775-b29c-4fbcf64f10bd', NULL, 0, 0, NULL, 1, 0)
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/20/2023 10:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/20/2023 10:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](150) NULL,
	[CategoryPhoto] [nvarchar](300) NULL,
	[CategoryOrder] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOrder]) VALUES (1, N'Women', N'/images/banner-01.jpg', 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOrder]) VALUES (2, N'Men', N'/images/banner-02.jpg', 2)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOrder]) VALUES (3, N'Bag', N'/images/banner-03.jpg', 3)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOrder]) VALUES (4, N'Shoes', N'/images/banner-04.jpg', 4)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOrder]) VALUES (5, N'Watches', N'/images/banner-07.jpg', 5)
SET IDENTITY_INSERT [dbo].[Categories] OFF
/****** Object:  Table [dbo].[Brands]    Script Date: 11/20/2023 10:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](30) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brands] ON
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (1, N'Brand_Shirt')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (2, N'Brand_Shoes')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (3, N'Brand_Watch')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (4, N'Brand_Women')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (5, N'Brand_Men')
SET IDENTITY_INSERT [dbo].[Brands] OFF
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/20/2023 10:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231030162400_initial', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231030162434_initial1', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231113032552_initial100', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231114161206_initia4', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231114162552_initia5', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231114163225_initial9', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231115161937_initial10', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231115162117_initial20', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231116074848_initUserTable', N'6.0.23')
/****** Object:  Table [dbo].[YourTable_Backup]    Script Date: 11/20/2023 10:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YourTable_Backup](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](150) NOT NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[ProductPrice] [decimal](8, 2) NULL,
	[ProductPhoto] [nvarchar](300) NULL,
	[SizeId] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[ProductDiscount] [decimal](8, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[YourTable_Backup] ON
INSERT [dbo].[YourTable_Backup] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (1, N'Pieces Metallic Printed', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(200.00 AS Decimal(8, 2)), N'images/product-01.jpg', 1, 4, NULL)
INSERT [dbo].[YourTable_Backup] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (2, N'Vintage Inspired Classic', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 2, CAST(300.00 AS Decimal(8, 2)), N'images/product-02.jpg', 3, 4, NULL)
INSERT [dbo].[YourTable_Backup] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (3, N'Lightweight Jacket', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 3, CAST(350.00 AS Decimal(8, 2)), N'images/product-03.jpg', 2, 1, NULL)
INSERT [dbo].[YourTable_Backup] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (4, N'Vintage Inspired Classic', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(240.00 AS Decimal(8, 2)), N'images/product-04.jpg', 3, 4, NULL)
INSERT [dbo].[YourTable_Backup] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (5, N'Lightweight Jacket', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 5, CAST(150.00 AS Decimal(8, 2)), N'images/product-05.jpg', 5, 5, NULL)
INSERT [dbo].[YourTable_Backup] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (6, N'Pieces Metallic Printed', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 4, CAST(160.00 AS Decimal(8, 2)), N'images/product-06.jpg', 3, 4, NULL)
INSERT [dbo].[YourTable_Backup] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (7, N'Lightweight Jacket', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(350.00 AS Decimal(8, 2)), N'images/product-07.jpg', 3, 4, NULL)
INSERT [dbo].[YourTable_Backup] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (8, N'Vintage Inspired Classic', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 4, CAST(360.00 AS Decimal(8, 2)), N'images/product-08.jpg', 4, 2, NULL)
INSERT [dbo].[YourTable_Backup] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (9, N'Pieces Metallic Printed', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(250.00 AS Decimal(8, 2)), N'images/product-09.jpg', 3, 1, NULL)
INSERT [dbo].[YourTable_Backup] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (10, N'Herschel supply', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 3, CAST(270.00 AS Decimal(8, 2)), N'images/product-10.jpg', 3, 4, NULL)
INSERT [dbo].[YourTable_Backup] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (11, N'Vintage Inspired Classic', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(350.00 AS Decimal(8, 2)), N'images/product-11.jpg', 5, 3, NULL)
INSERT [dbo].[YourTable_Backup] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (12, N'Herschel supply', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 2, CAST(150.00 AS Decimal(8, 2)), N'images/product-12.jpg', 2, 4, NULL)
INSERT [dbo].[YourTable_Backup] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (13, N'Lightweight Jacket', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(400.00 AS Decimal(8, 2)), N'images/product-13.jpg', 3, 4, NULL)
INSERT [dbo].[YourTable_Backup] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (14, N'Pieces Metallic Printed', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 4, CAST(200.00 AS Decimal(8, 2)), N'images/product-14.jpg', 2, 5, NULL)
INSERT [dbo].[YourTable_Backup] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (15, N'Lightweight Jacket', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 2, CAST(150.00 AS Decimal(8, 2)), N'images/product-15.jpg', 4, 1, NULL)
INSERT [dbo].[YourTable_Backup] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (16, N'Pieces Metallic Printed', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(350.00 AS Decimal(8, 2)), N'images/product-16.jpg', 3, 4, NULL)
SET IDENTITY_INSERT [dbo].[YourTable_Backup] OFF
/****** Object:  Table [dbo].[User]    Script Date: 11/20/2023 10:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserEmail] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
	[UserRole] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole]) VALUES (1, N'Admin', N'admin@gmail.com', N'123456', N'Administrator')
INSERT [dbo].[User] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole]) VALUES (2, N'customer', N'customer@gmail.com', N'654321', N'Customer')
INSERT [dbo].[User] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole]) VALUES (3, N'customer2', N'customer2@gmail.com', N'654321', N'Customer')
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[Sizes]    Script Date: 11/20/2023 10:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[SizeId] [int] IDENTITY(1,1) NOT NULL,
	[SizeName] [nvarchar](10) NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[SizeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON
INSERT [dbo].[Sizes] ([SizeId], [SizeName]) VALUES (1, N'S')
INSERT [dbo].[Sizes] ([SizeId], [SizeName]) VALUES (2, N'XS')
INSERT [dbo].[Sizes] ([SizeId], [SizeName]) VALUES (3, N'M')
INSERT [dbo].[Sizes] ([SizeId], [SizeName]) VALUES (4, N'L')
INSERT [dbo].[Sizes] ([SizeId], [SizeName]) VALUES (5, N'XL')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
/****** Object:  Table [dbo].[Products]    Script Date: 11/20/2023 10:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](150) NOT NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[ProductPrice] [int] NOT NULL,
	[ProductPhoto] [nvarchar](300) NULL,
	[SizeId] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[ProductDiscount] [decimal](8, 2) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (1, N'Pieces Metallic Printed', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, 200000, N'images/product-01.jpg', 1, 4, NULL)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (2, N'Vintage Inspired Classic', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 2, 250000, N'images/product-02.jpg', 3, 4, NULL)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (3, N'Lightweight Jacket', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 3, 100000, N'images/product-03.jpg', 2, 1, NULL)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (4, N'Vintage Inspired Classic', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, 150000, N'images/product-04.jpg', 3, 4, NULL)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (5, N'Lightweight Jacket', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 5, 360000, N'images/product-05.jpg', 5, 5, NULL)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (6, N'Pieces Metallic Printed', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 4, 270000, N'images/product-06.jpg', 3, 4, NULL)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (7, N'Lightweight Jacket', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, 250000, N'images/product-07.jpg', 3, 4, NULL)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (8, N'Vintage Inspired Classic', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 4, 120000, N'images/product-08.jpg', 4, 2, NULL)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (9, N'Pieces Metallic Printed', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, 450000, N'images/product-09.jpg', 3, 1, NULL)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (10, N'Herschel supply', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 3, 460000, N'images/product-10.jpg', 3, 4, NULL)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (11, N'Vintage Inspired Classic', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, 350000, N'images/product-11.jpg', 5, 3, NULL)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (12, N'Herschel supply', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 2, 120000, N'images/product-12.jpg', 2, 4, NULL)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (13, N'Lightweight Jacket', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, 150000, N'images/product-13.jpg', 3, 4, NULL)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (14, N'Pieces Metallic Printed', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 4, 300000, N'images/product-14.jpg', 2, 5, NULL)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (15, N'Lightweight Jacket', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 2, 200000, N'images/product-15.jpg', 4, 1, NULL)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductPhoto], [SizeId], [BrandId], [ProductDiscount]) VALUES (16, N'Pieces Metallic Printed', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, 140000, N'images/product-16.jpg', 3, 4, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/20/2023 10:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/20/2023 10:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/20/2023 10:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/20/2023 10:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/20/2023 10:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Default [DF__Products__Produc__2A4B4B5E]    Script Date: 11/20/2023 10:33:29 ******/
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [ProductPrice]
GO
/****** Object:  ForeignKey [FK_AspNetRoleClaims_AspNetRoles_RoleId]    Script Date: 11/20/2023 10:33:29 ******/
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_AspNetUserClaims_AspNetUsers_UserId]    Script Date: 11/20/2023 10:33:29 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_AspNetUserLogins_AspNetUsers_UserId]    Script Date: 11/20/2023 10:33:29 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_AspNetUserRoles_AspNetRoles_RoleId]    Script Date: 11/20/2023 10:33:29 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_AspNetUserRoles_AspNetUsers_UserId]    Script Date: 11/20/2023 10:33:29 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_AspNetUserTokens_AspNetUsers_UserId]    Script Date: 11/20/2023 10:33:29 ******/
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_Products_Brands_BrandId]    Script Date: 11/20/2023 10:33:29 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([BrandId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
/****** Object:  ForeignKey [FK_Products_Categories_CategoryId]    Script Date: 11/20/2023 10:33:29 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
/****** Object:  ForeignKey [FK_Products_Sizes_SizeId]    Script Date: 11/20/2023 10:33:29 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([SizeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Sizes_SizeId]
GO
