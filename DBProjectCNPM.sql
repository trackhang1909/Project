USE [master]
GO
/****** Object:  Database [ProjectCNPM]    Script Date: 11/29/2019 2:19:58 AM ******/
CREATE DATABASE [ProjectCNPM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectCNPM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProjectCNPM.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProjectCNPM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProjectCNPM_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProjectCNPM] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectCNPM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectCNPM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectCNPM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectCNPM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectCNPM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectCNPM] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectCNPM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectCNPM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectCNPM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectCNPM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectCNPM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectCNPM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectCNPM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectCNPM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectCNPM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectCNPM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectCNPM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectCNPM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectCNPM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectCNPM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectCNPM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectCNPM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectCNPM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectCNPM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectCNPM] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectCNPM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectCNPM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectCNPM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectCNPM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ProjectCNPM] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ProjectCNPM]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/29/2019 2:19:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[tenAdmin] [nvarchar](100) NOT NULL,
	[matKhauAdmin] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[tenAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cauhoi]    Script Date: 11/29/2019 2:19:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cauhoi](
	[maCauHoi] [nvarchar](50) NOT NULL,
	[maMonHoc] [nvarchar](50) NOT NULL,
	[cauHoi] [nvarchar](max) NOT NULL,
	[dapAnA] [nvarchar](max) NULL,
	[dapAnB] [nvarchar](max) NULL,
	[dapAnC] [nvarchar](max) NULL,
	[dapAnD] [nvarchar](max) NULL,
	[dapAnDung] [nvarchar](1) NOT NULL,
	[doKho] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Cauhoi] PRIMARY KEY CLUSTERED 
(
	[maCauHoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cauhoitam]    Script Date: 11/29/2019 2:19:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cauhoitam](
	[maCauHoi] [nvarchar](50) NOT NULL,
	[maMonHoc] [nvarchar](50) NOT NULL,
	[cauHoi] [nvarchar](max) NOT NULL,
	[dapAnA] [nvarchar](max) NOT NULL,
	[dapAnB] [nvarchar](max) NOT NULL,
	[dapAnC] [nvarchar](max) NOT NULL,
	[dapAnD] [nvarchar](max) NOT NULL,
	[dapAnDung] [nvarchar](1) NOT NULL,
	[doKho] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Cauhoitam] PRIMARY KEY CLUSTERED 
(
	[maCauHoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Chitietdiem]    Script Date: 11/29/2019 2:19:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietdiem](
	[maDiem] [nvarchar](50) NOT NULL,
	[soDiem] [float] NOT NULL,
 CONSTRAINT [PK_Chitietdiem] PRIMARY KEY CLUSTERED 
(
	[maDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dapan]    Script Date: 11/29/2019 2:19:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dapan](
	[maDapAn] [nvarchar](50) NOT NULL,
	[dapAnDung] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_Dapan] PRIMARY KEY CLUSTERED 
(
	[maDapAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Monhoc]    Script Date: 11/29/2019 2:19:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monhoc](
	[maMonHoc] [nvarchar](50) NOT NULL,
	[tenMonHoc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[maMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sinhvien]    Script Date: 11/29/2019 2:19:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinhvien](
	[tenSV] [nvarchar](100) NOT NULL,
	[matKhauSV] [nvarchar](100) NOT NULL,
	[hoTenSV] [nvarchar](100) NOT NULL,
	[gioiTinh] [nvarchar](3) NOT NULL,
 CONSTRAINT [PK_Sinhvien] PRIMARY KEY CLUSTERED 
(
	[tenSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Cauhoi]  WITH CHECK ADD  CONSTRAINT [fk_cauhoi_monhoc] FOREIGN KEY([maMonHoc])
REFERENCES [dbo].[Monhoc] ([maMonHoc])
GO
ALTER TABLE [dbo].[Cauhoi] CHECK CONSTRAINT [fk_cauhoi_monhoc]
GO
USE [master]
GO
ALTER DATABASE [ProjectCNPM] SET  READ_WRITE 
GO
