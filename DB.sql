USE [master]
GO
/****** Object:  Database [Bundles]    Script Date: 2016-12-26 16:23:41 ******/
CREATE DATABASE [Bundles]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bundles', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Bundles.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Bundles_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Bundles_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Bundles] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bundles].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bundles] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bundles] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bundles] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bundles] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bundles] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bundles] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Bundles] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bundles] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bundles] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bundles] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bundles] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bundles] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bundles] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bundles] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bundles] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Bundles] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bundles] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bundles] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bundles] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bundles] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bundles] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bundles] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bundles] SET RECOVERY FULL 
GO
ALTER DATABASE [Bundles] SET  MULTI_USER 
GO
ALTER DATABASE [Bundles] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bundles] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bundles] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bundles] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Bundles] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Bundles', N'ON'
GO
USE [Bundles]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2016-12-26 16:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[AgeId] [int] NULL,
	[IncomeId] [int] NULL,
	[IsStudent] [bit] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerProduct]    Script Date: 2016-12-26 16:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_CustomerProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 2016-12-26 16:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (1, N'fref', 5, 5, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (3, N'rtgtrg', 1, 1, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (4, N'erferf', 2, 4, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (5, N'eferf', 1, 1, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (12, N'erferferf', 1, 1, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (13, N'testuoju', 1, 1, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (14, N'test4', 2, 2, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (15, N'ferf', 2, 3, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (16, N'wedwed', 1, 1, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (17, N'wedwed', 3, 4, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (18, N'65y56y', 1, 1, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (19, N'65y56y', 2, 2, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (20, N'65y56y', 2, 3, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (21, N'65y56y', 2, 4, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (22, N'ferg', 1, 1, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (23, N'tgrgrtgrtg', 1, 1, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (24, N'eerg', 1, 1, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (25, N'eerg', 2, 2, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (26, N'eerg', 2, 4, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (27, N'erferf', 1, 1, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (28, N'erferf', 2, 3, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (29, N'erferf', 2, 4, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (30, N'efweferg', 1, 1, 0)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (31, N'efweferg', 1, 1, 1)
INSERT [dbo].[Customer] ([Id], [Name], [AgeId], [IncomeId], [IsStudent]) VALUES (32, N'ergtrgtrg', 1, 1, 0)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[CustomerProduct] ON 

INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (1, 3, 3)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (3, 4, 5)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (4, 4, 7)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (5, 5, 3)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (6, 12, 3)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (8, 13, 3)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (9, 14, 1)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (10, 14, 5)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (11, 15, 1)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (12, 15, 5)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (13, 15, 6)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (15, 16, 3)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (16, 17, 2)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (17, 17, 5)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (18, 17, 7)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (20, 4, 1)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (21, 4, 5)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (22, 18, 3)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (23, 19, 1)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (24, 19, 5)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (25, 20, 1)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (26, 20, 5)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (27, 20, 6)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (28, 21, 2)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (29, 21, 5)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (30, 21, 7)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (31, 22, 3)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (32, 23, 3)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (33, 24, 3)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (34, 25, 1)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (35, 25, 5)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (36, 26, 2)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (37, 26, 5)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (38, 26, 7)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (39, 27, 3)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (40, 28, 1)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (41, 28, 5)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (42, 28, 6)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (43, 29, 2)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (44, 29, 5)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (45, 29, 7)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (46, 30, 3)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (47, 31, 3)
INSERT [dbo].[CustomerProduct] ([Id], [CustomerId], [ProductId]) VALUES (48, 32, 3)
SET IDENTITY_INSERT [dbo].[CustomerProduct] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name]) VALUES (1, N'Current Account')
INSERT [dbo].[Product] ([Id], [Name]) VALUES (2, N'Current Account Plus')
INSERT [dbo].[Product] ([Id], [Name]) VALUES (3, N'Junior Saver Account')
INSERT [dbo].[Product] ([Id], [Name]) VALUES (4, N'Student Account')
INSERT [dbo].[Product] ([Id], [Name]) VALUES (5, N'Debit card')
INSERT [dbo].[Product] ([Id], [Name]) VALUES (6, N'Credit card')
INSERT [dbo].[Product] ([Id], [Name]) VALUES (7, N'Gold Credit card')
SET IDENTITY_INSERT [dbo].[Product] OFF
ALTER TABLE [dbo].[CustomerProduct]  WITH CHECK ADD  CONSTRAINT [FK__CustomerP__Custo__145C0A3F] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[CustomerProduct] CHECK CONSTRAINT [FK__CustomerP__Custo__145C0A3F]
GO
ALTER TABLE [dbo].[CustomerProduct]  WITH CHECK ADD  CONSTRAINT [FK__CustomerP__Produ__15502E78] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[CustomerProduct] CHECK CONSTRAINT [FK__CustomerP__Produ__15502E78]
GO
USE [master]
GO
ALTER DATABASE [Bundles] SET  READ_WRITE 
GO
