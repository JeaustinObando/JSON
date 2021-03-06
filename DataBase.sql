USE [master]
GO
/****** Object:  Database [JsonDB]    Script Date: 5/23/2022 10:25:35 PM ******/
CREATE DATABASE [JsonDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JsonDB', FILENAME = N'E:\sql base\MSSQL15.MSSQLSERVER\MSSQL\DATA\JsonDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JsonDB_log', FILENAME = N'E:\sql base\MSSQL15.MSSQLSERVER\MSSQL\DATA\JsonDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [JsonDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JsonDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JsonDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JsonDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JsonDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JsonDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JsonDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [JsonDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JsonDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JsonDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JsonDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JsonDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JsonDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JsonDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JsonDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JsonDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JsonDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JsonDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JsonDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JsonDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JsonDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JsonDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JsonDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JsonDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JsonDB] SET RECOVERY FULL 
GO
ALTER DATABASE [JsonDB] SET  MULTI_USER 
GO
ALTER DATABASE [JsonDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JsonDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JsonDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JsonDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JsonDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'JsonDB', N'ON'
GO
ALTER DATABASE [JsonDB] SET QUERY_STORE = OFF
GO
USE [JsonDB]
GO
/****** Object:  Table [dbo].[alterationsBuy]    Script Date: 5/23/2022 10:25:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alterationsBuy](
	[idBuy] [int] NOT NULL,
	[name] [varchar](20) NOT NULL,
	[details] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[buy]    Script Date: 5/23/2022 10:25:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[buy](
	[idBuy] [int] NOT NULL,
	[idClient] [int] NOT NULL,
	[amount] [money] NOT NULL,
	[personalized] [bit] NOT NULL,
	[idEmployee] [int] NOT NULL,
 CONSTRAINT [PK_buy] PRIMARY KEY CLUSTERED 
(
	[idBuy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[buyXproducts]    Script Date: 5/23/2022 10:25:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[buyXproducts](
	[idBuy] [int] NOT NULL,
	[idProduct] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client]    Script Date: 5/23/2022 10:25:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[idClient] [int] NOT NULL,
	[name] [varchar](20) NOT NULL,
	[firstLastName] [varchar](20) NOT NULL,
	[secondLastName] [varchar](20) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[idPayMethod] [int] NOT NULL,
 CONSTRAINT [PK_client] PRIMARY KEY CLUSTERED 
(
	[idClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 5/23/2022 10:25:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[idEmployee] [int] NOT NULL,
	[name] [varchar](20) NOT NULL,
	[firstLastName] [varchar](20) NOT NULL,
	[SecondLastName] [varchar](20) NOT NULL,
	[identificationCard] [varchar](20) NOT NULL,
	[idTypeEmployee] [int] NOT NULL,
	[address] [varchar](50) NOT NULL,
	[birthday] [date] NOT NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[idEmployee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[furniture]    Script Date: 5/23/2022 10:25:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[furniture](
	[idFurniture] [int] NOT NULL,
	[name] [varchar](20) NOT NULL,
	[space] [int] NOT NULL,
	[material] [varchar](30) NOT NULL,
	[pieces] [int] NOT NULL,
	[typeFurniture] [int] NOT NULL,
	[price] [money] NOT NULL,
	[inventory] [money] NOT NULL,
 CONSTRAINT [PK_furniture] PRIMARY KEY CLUSTERED 
(
	[idFurniture] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[otherdetails]    Script Date: 5/23/2022 10:25:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[otherdetails](
	[idFurniture] [int] NOT NULL,
	[Description] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PayMethod]    Script Date: 5/23/2022 10:25:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayMethod](
	[idPayMethod] [int] NOT NULL,
	[nameOwner] [varchar](20) NOT NULL,
	[number] [varchar](40) NOT NULL,
	[securityNumber] [varchar](10) NOT NULL,
	[dueDate] [date] NOT NULL,
 CONSTRAINT [PK_PayMethod] PRIMARY KEY CLUSTERED 
(
	[idPayMethod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_employee]    Script Date: 5/23/2022 10:25:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_employee](
	[idTypeEmployee] [int] NOT NULL,
	[name] [varchar](15) NOT NULL,
 CONSTRAINT [PK_type_employee] PRIMARY KEY CLUSTERED 
(
	[idTypeEmployee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[typeFurniture]    Script Date: 5/23/2022 10:25:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[typeFurniture](
	[idTypeFurniture] [int] NOT NULL,
	[name] [varchar](20) NOT NULL,
	[details] [varchar](50) NOT NULL,
 CONSTRAINT [PK_typeFurniture] PRIMARY KEY CLUSTERED 
(
	[idTypeFurniture] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
ALTER TABLE [dbo].[alterationsBuy]  WITH CHECK ADD  CONSTRAINT [FK_alterationsBuy_buy] FOREIGN KEY([idBuy])
REFERENCES [dbo].[buy] ([idBuy])
GO
ALTER TABLE [dbo].[alterationsBuy] CHECK CONSTRAINT [FK_alterationsBuy_buy]
GO
ALTER TABLE [dbo].[buy]  WITH CHECK ADD  CONSTRAINT [FK_buy_client] FOREIGN KEY([idClient])
REFERENCES [dbo].[client] ([idClient])
GO
ALTER TABLE [dbo].[buy] CHECK CONSTRAINT [FK_buy_client]
GO
ALTER TABLE [dbo].[buy]  WITH CHECK ADD  CONSTRAINT [FK_buy_employee] FOREIGN KEY([idEmployee])
REFERENCES [dbo].[employee] ([idEmployee])
GO
ALTER TABLE [dbo].[buy] CHECK CONSTRAINT [FK_buy_employee]
GO
ALTER TABLE [dbo].[buyXproducts]  WITH CHECK ADD  CONSTRAINT [FK_buyXproducts_buy] FOREIGN KEY([idBuy])
REFERENCES [dbo].[buy] ([idBuy])
GO
ALTER TABLE [dbo].[buyXproducts] CHECK CONSTRAINT [FK_buyXproducts_buy]
GO
ALTER TABLE [dbo].[buyXproducts]  WITH CHECK ADD  CONSTRAINT [FK_buyXproducts_furniture] FOREIGN KEY([idProduct])
REFERENCES [dbo].[furniture] ([idFurniture])
GO
ALTER TABLE [dbo].[buyXproducts] CHECK CONSTRAINT [FK_buyXproducts_furniture]
GO
ALTER TABLE [dbo].[client]  WITH CHECK ADD  CONSTRAINT [FK_client_PayMethod] FOREIGN KEY([idPayMethod])
REFERENCES [dbo].[PayMethod] ([idPayMethod])
GO
ALTER TABLE [dbo].[client] CHECK CONSTRAINT [FK_client_PayMethod]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_type_employee] FOREIGN KEY([idTypeEmployee])
REFERENCES [dbo].[type_employee] ([idTypeEmployee])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_type_employee]
GO
ALTER TABLE [dbo].[furniture]  WITH CHECK ADD  CONSTRAINT [FK_furniture_typeFurniture] FOREIGN KEY([typeFurniture])
REFERENCES [dbo].[typeFurniture] ([idTypeFurniture])
GO
ALTER TABLE [dbo].[furniture] CHECK CONSTRAINT [FK_furniture_typeFurniture]
GO
ALTER TABLE [dbo].[otherdetails]  WITH CHECK ADD  CONSTRAINT [FK_otherdetails_furniture] FOREIGN KEY([idFurniture])
REFERENCES [dbo].[furniture] ([idFurniture])
GO
ALTER TABLE [dbo].[otherdetails] CHECK CONSTRAINT [FK_otherdetails_furniture]
GO
USE [master]
GO
ALTER DATABASE [JsonDB] SET  READ_WRITE 
GO
