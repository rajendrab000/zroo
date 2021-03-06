USE [master]
GO
/****** Object:  Database [BSDB]    Script Date: 04/01/2017 23:56:16 ******/
CREATE DATABASE [BSDB] ON  PRIMARY 
( NAME = N'BSDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.BLACKSWASTIK64\MSSQL\DATA\BSDB.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BSDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.BLACKSWASTIK64\MSSQL\DATA\BSDB_log.LDF' , SIZE = 512KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BSDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BSDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BSDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BSDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BSDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BSDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BSDB] SET ARITHABORT OFF
GO
ALTER DATABASE [BSDB] SET AUTO_CLOSE ON
GO
ALTER DATABASE [BSDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BSDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BSDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BSDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BSDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BSDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BSDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BSDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BSDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BSDB] SET  ENABLE_BROKER
GO
ALTER DATABASE [BSDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BSDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BSDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BSDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BSDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BSDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BSDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BSDB] SET  READ_WRITE
GO
ALTER DATABASE [BSDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [BSDB] SET  MULTI_USER
GO
ALTER DATABASE [BSDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BSDB] SET DB_CHAINING OFF
GO
USE [BSDB]
GO
/****** Object:  Table [dbo].[TBL_ShopCategory_CNFG]    Script Date: 04/01/2017 23:56:19 ******/

Create table TBL_ShopDirectory
(
ShopDirectoryID int primary key identity(1,1),
IsActive bit default(1),
--CreateDate datetime default(getdate()),
--CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) ,
--UpdateDate datetime,
--UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
) 
Go
/****** Object:  Table [dbo].[TBL_ShopLoginDetails]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_ShopLoginDetails](
	[ShopLoginDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[LoginName] [nvarchar](40) NOT NULL,
	[Password] [nvarchar](40) NOT NULL,
	FirstName nvarchar(25),
	LastName nvarchar(25),
	EmailID nvarchar(40),
	ShopDirectoryID int foreign key references TBL_ShopDirectory (ShopDirectoryID),
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) ,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
PRIMARY KEY CLUSTERED 
(
	[ShopLoginDetailsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_ShopCategory_CNFG](
	[ShopCategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](25) NOT NULL,
	
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_SHOPCATEGORY_CNFG] PRIMARY KEY CLUSTERED 
(
	[ShopCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_ProductType_CNFG]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_ProductType_CNFG](
	[ProductTypeID] [int] NOT NULL,
	[ProductTypeName] [nvarchar](40) NOT NULL,
	[IsActive] [bit] NOT NULL,
	
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_PRODUCTTYPE_CNFG] PRIMARY KEY CLUSTERED 
(
	[ProductTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_ProductSubType_CNFG]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_ProductSubType_CNFG](
	[ProductSubTypeID] [int] NOT NULL,
	[ProductSubTypeName] [nvarchar](40) NOT NULL,
	[IsActive] [bit] NOT NULL,
	

	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_PRODUCTSUBTYPE_CNFG] PRIMARY KEY CLUSTERED 
(
	[ProductSubTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_InActiveShopReasons_CNFG]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_InActiveShopReasons_CNFG](
	[ShopInActiveReasonID] [int] NOT NULL,
	[InActiveReason] [nvarchar](40) NOT NULL,
	
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
	
 CONSTRAINT [PK_TBL_INACTIVESHOPREASONS_CNFG] PRIMARY KEY CLUSTERED 
(
	[ShopInActiveReasonID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_InfrastructureCategories_CNFG]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_InfrastructureCategories_CNFG](
	[InfrastructureCategoryID] [int] NOT NULL,
	[InfrastructureCategoryName] [nvarchar](25) NOT NULL,
	[IsActive] [bit] NOT NULL,
	
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_INFRASTRUCTURECATEGORIES_CNFG] PRIMARY KEY CLUSTERED 
(
	[InfrastructureCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Application] [nvarchar](50) NOT NULL,
	[Logged] [datetime] NOT NULL,
	[Level] [nvarchar](50) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](250) NULL,
	[ServerName] [nvarchar](max) NULL,
	[Port] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
	[Https] [bit] NULL,
	[ServerAddress] [nvarchar](100) NULL,
	[Exception] [nvarchar](max) NULL,
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TBL_States_CNFG]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_States_CNFG](
	[StateID] [int] NOT NULL,
	[StateName] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) ,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_STATES_CNFG] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_ShopTypes_CNFG]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_ShopTypes_CNFG](
	[ShopTypeID] [int] NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) ,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_SHOPTYPES_CNFG] PRIMARY KEY CLUSTERED 
(
	[ShopTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_ProductCategories_CNFG]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_ProductCategories_CNFG](
	[ProductCategoryID] [int] NOT NULL,
	[ProductCategoryName] [nvarchar](40) NOT NULL,
	[IsActive] [bit] NOT NULL,
	

	CreateDate datetime default(getdate()),
	CreatedBy  int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_PRODUCTCATEGORIES_CNFG] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Shops]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Shops](
	[ShopID] [int] IDENTITY(1,1) NOT NULL,
	[ShopName] [nvarchar](50) NOT NULL,
	[OwnerName] [nvarchar](40) NOT NULL,
	[ContactNumber] [nvarchar](20) NOT NULL,
	[WhatsAppHikeNumber] [nvarchar](20) NOT NULL,
	[ShopTypeID] [int] NOT NULL,
	[ShopOpningTime] [time](7) NULL,
	[ShopClosingTime] [time](7) NULL,
	[InfrastructureID] [int] NULL,
	[ShopAddress] [nvarchar](300) NOT NULL,
	[Email] [nvarchar](40) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ShopCategoryID] [int] NOT NULL,
	ShopDirectoryID int foreign key references TBL_ShopDirectory (ShopDirectoryID),
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_Shops] PRIMARY KEY CLUSTERED 
(
	[ShopID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Cities_CNFG]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Cities_CNFG](
	[CityID] [int] NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[StateID] [int] NOT NULL,
	
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_CITIES_CNFG] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Infrastructure_CNFG]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Infrastructure_CNFG](
	[InfrastructureID] [int] NOT NULL,
	[InfrastructureName] [nvarchar](50) NOT NULL,
	[CityID] [int] NOT NULL,
	[PostalCodeID] [int] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[OpeningTime] [time](7) NULL,
	[ClosingTime] [time](7) NULL,
	[PhoneNumber] [nvarchar](30) NOT NULL,
	
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_INFRASTRUCTURE_CNFG] PRIMARY KEY CLUSTERED 
(
	[InfrastructureID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_InActiveShopList_CNFG]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_InActiveShopList_CNFG](
	[ID] [int] NOT NULL,
	[ShopID] [int] NOT NULL,
	[ShopInActiveReasonID] [int] NOT NULL,
	[Comment] [nvarchar](250) NOT NULL,
	
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_INACTIVESHOPLIST_CNFG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_AdminOffers]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_AdminOffers](
	[AdminOfferID] [int] NOT NULL,
	[ShortText] [nvarchar](200) NOT NULL,
	[LongText] [nvarchar](1000) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CityID] [int] NULL,
	[StateID] [int] NULL,
	
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_ADMINOFFERS] PRIMARY KEY CLUSTERED 
(
	[AdminOfferID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Products]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Products](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[ProductBrand] [nvarchar](75) NOT NULL,
	[BarCode] [nvarchar](50) NOT NULL,
	[ProductTypeID] [int] NULL,
	[ShopID] [int] NOT NULL,
	[IsAvailable] [bit] NOT NULL,
	[AvailableQuantity] [decimal](18, 0) NOT NULL,
	[OtherJsonDetails] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[ProductSubTypeID] [int] NOT NULL,
	[MRP] [decimal](18, 0) NOT NULL,
	[ShopPrice] [decimal](18, 0) NOT NULL,
	
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_PRODUCTS] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_PostalCodes_CNFG]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_PostalCodes_CNFG](
	[PostCodeID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CityID] [int] NOT NULL,
	
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_POSTALCODES_CNFG] PRIMARY KEY CLUSTERED 
(
	[PostCodeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Shops5TopProducts]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Shops5TopProducts](
	[ShopID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ID] [int] NOT NULL,
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_SHOPS5TOPPRODUCTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_ShopOffers]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_ShopOffers](
	[OfferID] [int] NOT NULL,
	[ShopID] [int] NOT NULL,
	[OfferShortText] [nvarchar](250) NOT NULL,
	[OfferStartDate] [datetime] NULL,
	[OfferEndDate] [datetime] NULL,
	[OfferOnBrand] [nvarchar](75) NULL,
	[IsOfferOnProducts] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[OfferDetailText] [nvarchar](1000) NOT NULL,
	[OfferImage] [binary](1) NOT NULL,
	
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_SHOPOFFERS] PRIMARY KEY CLUSTERED 
(
	[OfferID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_ShopsInPostalCodes]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_ShopsInPostalCodes](
	[ID] [int] NOT NULL,
	[ShopID] [int] NOT NULL,
	[PostalCodeID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_SHOPESINPOSTALCODES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ShopID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PostalCodeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_OfferOnProducts]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_OfferOnProducts](
	[ID] [int] NOT NULL,
	[OfferID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_OFFERONPRODUCTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_ProductImages]    Script Date: 04/01/2017 23:56:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_ProductImages](
	[ImageID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductImage] [binary](1) NOT NULL,
	[IsActive] [bit] NOT NULL,
	
	
	CreateDate datetime default(getdate()),
	CreatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) not null,
	UpdateDate datetime,
	UpdatedBy int foreign key references TBL_ShopLoginDetails(ShopLoginDetailsID) 
 CONSTRAINT [PK_TBL_PRODUCTIMAGES] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__TBL_Infra__IsAct__2E1BDC42]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_InfrastructureCategories_CNFG] ADD  DEFAULT ('1') FOR [IsActive]
GO
/****** Object:  Default [DF__TBL_State__IsAct__2F10007B]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_States_CNFG] ADD  DEFAULT ('true') FOR [IsActive]
GO
/****** Object:  Default [DF__TBL_ShopT__IsAct__300424B4]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_ShopTypes_CNFG] ADD  DEFAULT ('1') FOR [IsActive]
GO
/****** Object:  Default [DF__TBL_Citie__IsAct__30F848ED]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_Cities_CNFG] ADD  DEFAULT ('1') FOR [IsActive]
GO
/****** Object:  Default [DF__TBL_Produ__IsAct__31EC6D26]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_Products] ADD  DEFAULT ('1') FOR [IsActive]
GO
/****** Object:  Default [DF__TBL_ShopO__IsOff__32E0915F]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_ShopOffers] ADD  DEFAULT ('1') FOR [IsOfferOnProducts]
GO
/****** Object:  Default [DF__TBL_ShopO__IsAct__33D4B598]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_ShopOffers] ADD  DEFAULT ('1') FOR [IsActive]
GO
/****** Object:  Default [DF__TBL_Shope__IsAct__34C8D9D1]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_ShopsInPostalCodes] ADD  DEFAULT ('1') FOR [IsActive]
GO
/****** Object:  Default [DF__TBL_Produ__IsAct__35BCFE0A]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_ProductImages] ADD  DEFAULT ('1') FOR [IsActive]
GO
/****** Object:  ForeignKey [TBL_Shops_fk1]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_Shops]  WITH CHECK ADD  CONSTRAINT [TBL_Shops_fk1] FOREIGN KEY([ShopTypeID])
REFERENCES [dbo].[TBL_ShopTypes_CNFG] ([ShopTypeID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_Shops] CHECK CONSTRAINT [TBL_Shops_fk1]
GO
/****** Object:  ForeignKey [TBL_Shops_fk2]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_Shops]  WITH CHECK ADD  CONSTRAINT [TBL_Shops_fk2] FOREIGN KEY([InfrastructureID])
REFERENCES [dbo].[TBL_InfrastructureCategories_CNFG] ([InfrastructureCategoryID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_Shops] CHECK CONSTRAINT [TBL_Shops_fk2]
GO
/****** Object:  ForeignKey [TBL_Shops_fk3]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_Shops]  WITH CHECK ADD  CONSTRAINT [TBL_Shops_fk3] FOREIGN KEY([ShopCategoryID])
REFERENCES [dbo].[TBL_ShopCategory_CNFG] ([ShopCategoryID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_Shops] CHECK CONSTRAINT [TBL_Shops_fk3]
GO
/****** Object:  ForeignKey [TBL_Cities_CNFG_fk0]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_Cities_CNFG]  WITH CHECK ADD  CONSTRAINT [TBL_Cities_CNFG_fk0] FOREIGN KEY([StateID])
REFERENCES [dbo].[TBL_States_CNFG] ([StateID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_Cities_CNFG] CHECK CONSTRAINT [TBL_Cities_CNFG_fk0]
GO
/****** Object:  ForeignKey [TBL_Infrastructure_CNFG_fk0]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_Infrastructure_CNFG]  WITH CHECK ADD  CONSTRAINT [TBL_Infrastructure_CNFG_fk0] FOREIGN KEY([CityID])
REFERENCES [dbo].[TBL_Cities_CNFG] ([CityID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_Infrastructure_CNFG] CHECK CONSTRAINT [TBL_Infrastructure_CNFG_fk0]
GO
/****** Object:  ForeignKey [TBL_InActiveShopList_CNFG_fk0]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_InActiveShopList_CNFG]  WITH CHECK ADD  CONSTRAINT [TBL_InActiveShopList_CNFG_fk0] FOREIGN KEY([ShopID])
REFERENCES [dbo].[TBL_Shops] ([ShopID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_InActiveShopList_CNFG] CHECK CONSTRAINT [TBL_InActiveShopList_CNFG_fk0]
GO
/****** Object:  ForeignKey [TBL_InActiveShopList_CNFG_fk1]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_InActiveShopList_CNFG]  WITH CHECK ADD  CONSTRAINT [TBL_InActiveShopList_CNFG_fk1] FOREIGN KEY([ShopInActiveReasonID])
REFERENCES [dbo].[TBL_InActiveShopReasons_CNFG] ([ShopInActiveReasonID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_InActiveShopList_CNFG] CHECK CONSTRAINT [TBL_InActiveShopList_CNFG_fk1]
GO
/****** Object:  ForeignKey [TBL_AdminOffers_fk0]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_AdminOffers]  WITH CHECK ADD  CONSTRAINT [TBL_AdminOffers_fk0] FOREIGN KEY([CityID])
REFERENCES [dbo].[TBL_Cities_CNFG] ([CityID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_AdminOffers] CHECK CONSTRAINT [TBL_AdminOffers_fk0]
GO
/****** Object:  ForeignKey [bsProductType]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_Products]  WITH CHECK ADD  CONSTRAINT [bsProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[TBL_ProductType_CNFG] ([ProductTypeID])
GO
ALTER TABLE [dbo].[TBL_Products] CHECK CONSTRAINT [bsProductType]
GO
/****** Object:  ForeignKey [TBL_Products_fk1]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_Products]  WITH CHECK ADD  CONSTRAINT [TBL_Products_fk1] FOREIGN KEY([ShopID])
REFERENCES [dbo].[TBL_Shops] ([ShopID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_Products] CHECK CONSTRAINT [TBL_Products_fk1]
GO
/****** Object:  ForeignKey [TBL_Products_fk2]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_Products]  WITH CHECK ADD  CONSTRAINT [TBL_Products_fk2] FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[TBL_ProductCategories_CNFG] ([ProductCategoryID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_Products] CHECK CONSTRAINT [TBL_Products_fk2]
GO
/****** Object:  ForeignKey [TBL_Products_fk3]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_Products]  WITH CHECK ADD  CONSTRAINT [TBL_Products_fk3] FOREIGN KEY([ProductSubTypeID])
REFERENCES [dbo].[TBL_ProductSubType_CNFG] ([ProductSubTypeID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_Products] CHECK CONSTRAINT [TBL_Products_fk3]
GO
/****** Object:  ForeignKey [TBL_PostalCodes_CNFG_fk0]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_PostalCodes_CNFG]  WITH CHECK ADD  CONSTRAINT [TBL_PostalCodes_CNFG_fk0] FOREIGN KEY([CityID])
REFERENCES [dbo].[TBL_Cities_CNFG] ([CityID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_PostalCodes_CNFG] CHECK CONSTRAINT [TBL_PostalCodes_CNFG_fk0]
GO
/****** Object:  ForeignKey [TBL_Shops5TopProducts_fk0]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_Shops5TopProducts]  WITH CHECK ADD  CONSTRAINT [TBL_Shops5TopProducts_fk0] FOREIGN KEY([ShopID])
REFERENCES [dbo].[TBL_Shops] ([ShopID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_Shops5TopProducts] CHECK CONSTRAINT [TBL_Shops5TopProducts_fk0]
GO
/****** Object:  ForeignKey [TBL_ShopOffers_fk0]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_ShopOffers]  WITH CHECK ADD  CONSTRAINT [TBL_ShopOffers_fk0] FOREIGN KEY([ShopID])
REFERENCES [dbo].[TBL_Shops] ([ShopID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_ShopOffers] CHECK CONSTRAINT [TBL_ShopOffers_fk0]
GO
/****** Object:  ForeignKey [ShopesInPostalCodes_fk0]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_ShopsInPostalCodes]  WITH CHECK ADD  CONSTRAINT [ShopesInPostalCodes_fk0] FOREIGN KEY([ShopID])
REFERENCES [dbo].[TBL_Shops] ([ShopID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_ShopsInPostalCodes] CHECK CONSTRAINT [ShopesInPostalCodes_fk0]
GO
/****** Object:  ForeignKey [ShopesInPostalCodes_fk1]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_ShopsInPostalCodes]  WITH CHECK ADD  CONSTRAINT [ShopesInPostalCodes_fk1] FOREIGN KEY([PostalCodeID])
REFERENCES [dbo].[TBL_PostalCodes_CNFG] ([PostCodeID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_ShopsInPostalCodes] CHECK CONSTRAINT [ShopesInPostalCodes_fk1]
GO
/****** Object:  ForeignKey [TBL_OfferOnProducts_fk0]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_OfferOnProducts]  WITH CHECK ADD  CONSTRAINT [TBL_OfferOnProducts_fk0] FOREIGN KEY([OfferID])
REFERENCES [dbo].[TBL_ShopOffers] ([OfferID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_OfferOnProducts] CHECK CONSTRAINT [TBL_OfferOnProducts_fk0]
GO
/****** Object:  ForeignKey [TBL_ProductImages_fk0]    Script Date: 04/01/2017 23:56:19 ******/
ALTER TABLE [dbo].[TBL_ProductImages]  WITH CHECK ADD  CONSTRAINT [TBL_ProductImages_fk0] FOREIGN KEY([ProductID])
REFERENCES [dbo].[TBL_Products] ([ProductID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TBL_ProductImages] CHECK CONSTRAINT [TBL_ProductImages_fk0]
GO
