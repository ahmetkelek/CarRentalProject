USE [master]
GO
/****** Object:  Database [RentACar]    Script Date: 8.04.2022 22:58:26 ******/
CREATE DATABASE [RentACar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RentACar', FILENAME = N'C:\Users\Ahmet\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\RentACar.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RentACar_log', FILENAME = N'C:\Users\Ahmet\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\RentACar.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RentACar] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RentACar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RentACar] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [RentACar] SET ANSI_NULLS ON 
GO
ALTER DATABASE [RentACar] SET ANSI_PADDING ON 
GO
ALTER DATABASE [RentACar] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [RentACar] SET ARITHABORT ON 
GO
ALTER DATABASE [RentACar] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RentACar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RentACar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RentACar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RentACar] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [RentACar] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [RentACar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RentACar] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [RentACar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RentACar] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RentACar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RentACar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RentACar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RentACar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RentACar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RentACar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RentACar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RentACar] SET RECOVERY FULL 
GO
ALTER DATABASE [RentACar] SET  MULTI_USER 
GO
ALTER DATABASE [RentACar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RentACar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RentACar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RentACar] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RentACar] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RentACar] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [RentACar] SET QUERY_STORE = OFF
GO
USE [RentACar]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 8.04.2022 22:58:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarImages]    Script Date: 8.04.2022 22:58:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarImages](
	[CarImageId] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NULL,
	[ImagePath] [nchar](150) NULL,
	[CarImageDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CarImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 8.04.2022 22:58:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[CarId] [int] IDENTITY(1,1) NOT NULL,
	[BrandId] [int] NULL,
	[ColorId] [int] NULL,
	[ModelYear] [int] NULL,
	[DailyPrice] [int] NULL,
	[Description] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 8.04.2022 22:58:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[ColorId] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 8.04.2022 22:58:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[CompanyName] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationClaims]    Script Date: 8.04.2022 22:58:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rentals]    Script Date: 8.04.2022 22:58:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rentals](
	[RentalId] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[RentDate] [datetime] NOT NULL,
	[ReturnDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RentalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table]    Script Date: 8.04.2022 22:58:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OperationClaimId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOperationClaims]    Script Date: 8.04.2022 22:58:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOperationClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OperationClaimId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8.04.2022 22:58:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[PasswordHash] [varbinary](500) NOT NULL,
	[PasswordSalt] [varbinary](500) NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (7, N'Ford                                              ')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[CarImages] ON 

INSERT [dbo].[CarImages] ([CarImageId], [CarId], [ImagePath], [CarImageDate]) VALUES (1, 16, N'a79bc85a-c955-4d1d-abf1-dfc50649d41e.jpg                                                                                                              ', CAST(N'2022-03-31T23:53:47.730' AS DateTime))
INSERT [dbo].[CarImages] ([CarImageId], [CarId], [ImagePath], [CarImageDate]) VALUES (2, 0, N'ba37712f-d4e7-4abb-bd9c-46c042e7adaa.jpg                                                                                                              ', CAST(N'2022-04-04T13:30:56.327' AS DateTime))
SET IDENTITY_INSERT [dbo].[CarImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([CarId], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (16, 5, 1, 2015, 1000, N'Classic                                           ')
INSERT [dbo].[Cars] ([CarId], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (17, 6, 2, 2011, 2000, N'American                                          ')
INSERT [dbo].[Cars] ([CarId], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (18, 3, 3, 2018, 3000, N'Antique                                           ')
INSERT [dbo].[Cars] ([CarId], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (1015, 1, 3, 2021, 4585, N'TEST1                                             ')
INSERT [dbo].[Cars] ([CarId], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (1016, 1, 3, 2021, 4585, N'TEST21                                            ')
INSERT [dbo].[Cars] ([CarId], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (2013, 1, 3, 2021, 4585, N'AHMET MEHMET                                      ')
INSERT [dbo].[Cars] ([CarId], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (3013, 3, 3, 2018, 0, N'c                                                 ')
INSERT [dbo].[Cars] ([CarId], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (4013, 5, 1, 2015, 1000, N'Alassics123                                       ')
INSERT [dbo].[Cars] ([CarId], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (5013, 5, 1, 2015, 1000, N'Amerikanoooo                                      ')
INSERT [dbo].[Cars] ([CarId], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (5014, 5, 1, 2015, 1000, N'Amerikanooo1111o                                  ')
INSERT [dbo].[Cars] ([CarId], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (5015, 5, 1, 2015, 1000, N'Amerikanooo1111o                                  ')
INSERT [dbo].[Cars] ([CarId], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (5016, 5, 1, 2015, 1000, N'Amerikanasdasdasdooo1111o                         ')
INSERT [dbo].[Cars] ([CarId], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (5017, 5, 1, 2015, 1000, N'Amerikanasdasdasdasdooo1111o                      ')
INSERT [dbo].[Cars] ([CarId], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (5018, 5, 1, 2015, 1000, N'Ayetki kisitlamasi jkhkhbkçj asdasd               ')
SET IDENTITY_INSERT [dbo].[Cars] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([ColorId], [ColorName]) VALUES (1, N'Yeşil                                             ')
INSERT [dbo].[Colors] ([ColorId], [ColorName]) VALUES (2, N'Mavi                                              ')
INSERT [dbo].[Colors] ([ColorId], [ColorName]) VALUES (3, N'Beyaz                                             ')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerId], [UserId], [CompanyName]) VALUES (1, 1, N'One Company                                       ')
INSERT [dbo].[Customers] ([CustomerId], [UserId], [CompanyName]) VALUES (2, 2, N'Two Company                                       ')
INSERT [dbo].[Customers] ([CustomerId], [UserId], [CompanyName]) VALUES (3, 3, N'Three Company                                     ')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[OperationClaims] ON 

INSERT [dbo].[OperationClaims] ([Id], [Name]) VALUES (1, N'admin')
INSERT [dbo].[OperationClaims] ([Id], [Name]) VALUES (2, N'moderator')
INSERT [dbo].[OperationClaims] ([Id], [Name]) VALUES (3, N'user')
INSERT [dbo].[OperationClaims] ([Id], [Name]) VALUES (4, N'car.add')
INSERT [dbo].[OperationClaims] ([Id], [Name]) VALUES (5, N'car.list')
SET IDENTITY_INSERT [dbo].[OperationClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[UserOperationClaims] ON 

INSERT [dbo].[UserOperationClaims] ([Id], [UserId], [OperationClaimId]) VALUES (1, 3, 4)
SET IDENTITY_INSERT [dbo].[UserOperationClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (1, N'Ahmet', N'Kelek', N'ahmet@ahmet1.com', 0x1AB38A59B2C05702E1C7B15946E3CDBF05F92DE42172E7E64FA6C8D1DACA5D33DF0B9E0FC53051EEFFB013AC433ED5A7145845D3ED62CA71B672120A3DAB78CA, 0x78F389212070764E8B6BF04359A95E0B7E263131E40954B6CADA4E8372A081D99043A3E726E5A90ED6AB84DBD7591A081251378CC59840F79BCC0C4AA87424BF4F4DD21BE99E01E7EA0CCF635F075EEE0F8B63EEF68E1F2C3A1094B785FBDAAB7CD7F96378AB76802A4AC8CB718EEB2E17BB47B78AF992310CBA9154EC39CAF9, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (2, N'Ahmet', N'Kelek1', N'ahmet@ahmet12.com', 0x5A9141FC44D2F39C1A5114C472FE58E74406D621B3C1E64C46C1BC633ABEA3217058D03B62AA7979C6A6022F50706EFBAD8A6F644843C632ADBB5F7FDA8D2893, 0x432195778F36282E0CB043451FA5CABB4D01A619B9F887D45A4E783CED9258ACEA48E53E1C163917153DCA60E0E50CB9CD85CA35DB47DC6077A3A3F460B6C3F73FC7EDCC0020BC684888DB367CD4B2EA39DB6145BF6FF1FAEE4BBFB4B33852705014A76792B6615DE89D9C855A818AB5ED12A0CFDFBD22BF8890CBF9895C6014, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (3, N'Kekek', N'Ahmet', N'ahmet@com', 0xB11824AFC0EDD2914169A861D9BFE01A3960238B99C25F7287220D580EC1BB2D27B25B4C8F4370EE6EC5A524BDBD072C68C9CE39E31AAA26E32762480458A12A, 0x0C94C4F39BAE07AD17904DB3605233D0C5ED00DB666AF507800441EED8AF51372D0EE2BC6F9568516FE4B063D5F08C156BF509812BA2C88632DD11648FB830EB3BEFA8476A12A33FC9912D2A2ACC2EAF9C15174A3E8916C2A223C8EE9D28C801FC5ACD01099CEABA7878ABB4CF1DFA7A8BE73B4D22ED9600CA7D9F9E4CAC7571, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [RentACar] SET  READ_WRITE 
GO
