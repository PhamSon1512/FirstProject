USE [master]
GO
/****** Object:  Database [HomestayBooking]    Script Date: 07/03/2024 4:27:33 SA ******/
CREATE DATABASE [HomestayBooking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HomestayBooking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVER2019\MSSQL\DATA\HomestayBooking.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HomestayBooking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVER2019\MSSQL\DATA\HomestayBooking_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HomestayBooking] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HomestayBooking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HomestayBooking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HomestayBooking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HomestayBooking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HomestayBooking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HomestayBooking] SET ARITHABORT OFF 
GO
ALTER DATABASE [HomestayBooking] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HomestayBooking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HomestayBooking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HomestayBooking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HomestayBooking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HomestayBooking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HomestayBooking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HomestayBooking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HomestayBooking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HomestayBooking] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HomestayBooking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HomestayBooking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HomestayBooking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HomestayBooking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HomestayBooking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HomestayBooking] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HomestayBooking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HomestayBooking] SET RECOVERY FULL 
GO
ALTER DATABASE [HomestayBooking] SET  MULTI_USER 
GO
ALTER DATABASE [HomestayBooking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HomestayBooking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HomestayBooking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HomestayBooking] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HomestayBooking] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HomestayBooking] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'HomestayBooking', N'ON'
GO
ALTER DATABASE [HomestayBooking] SET QUERY_STORE = OFF
GO
USE [HomestayBooking]
GO
/****** Object:  Table [dbo].[account]    Script Date: 07/03/2024 4:27:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[email] [varchar](255) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[role] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bookingDetail]    Script Date: 07/03/2024 4:27:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bookingDetail](
	[email] [varchar](255) NULL,
	[idRoom] [int] NOT NULL,
	[idBooking] [int] IDENTITY(0,1) NOT NULL,
	[imageRoom] [nvarchar](255) NULL,
	[dobBefore] [varchar](255) NULL,
	[dobAfter] [varchar](255) NULL,
	[quantity] [int] NULL,
	[price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idRoom] ASC,
	[idBooking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[likeList]    Script Date: 07/03/2024 4:27:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[likeList](
	[idList] [int] IDENTITY(0,1) NOT NULL,
	[email] [varchar](255) NULL,
	[idRoom] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[place]    Script Date: 07/03/2024 4:27:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[place](
	[name] [nvarchar](255) NOT NULL,
	[imageLink] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room]    Script Date: 07/03/2024 4:27:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[roomName] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[searchName] [varchar](255) NULL,
	[detailImageRoom1] [varchar](100) NULL,
	[detailImageRoom2] [varchar](100) NULL,
	[detailImageRoom3] [varchar](100) NULL,
	[price] [int] NULL,
	[star] [int] NULL,
	[quantityBed] [int] NULL,
	[imageRoom] [varchar](255) NULL,
	[descriptions] [nvarchar](1000) NULL,
	[isLike] [bit] NULL,
	[isActive] [bit] NULL,
	[isExist] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[bookingDetail]  WITH CHECK ADD FOREIGN KEY([idRoom])
REFERENCES [dbo].[room] ([id])
GO
ALTER TABLE [dbo].[likeList]  WITH CHECK ADD FOREIGN KEY([idRoom])
REFERENCES [dbo].[room] ([id])
GO
ALTER TABLE [dbo].[room]  WITH CHECK ADD FOREIGN KEY([name])
REFERENCES [dbo].[place] ([name])
GO
USE [master]
GO
ALTER DATABASE [HomestayBooking] SET  READ_WRITE 
GO
