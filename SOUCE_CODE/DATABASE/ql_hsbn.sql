USE [master]
GO
/****** Object:  Database [QLHOSO_BENHVIEN]    Script Date: 8/2/2020 9:45:46 PM ******/
CREATE DATABASE [QLHOSO_BENHVIEN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLHOSO_BENHVIEN', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.TRANTAN\MSSQL\DATA\QLHOSO_BENHVIEN.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLHOSO_BENHVIEN_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.TRANTAN\MSSQL\DATA\QLHOSO_BENHVIEN_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLHOSO_BENHVIEN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET  MULTI_USER 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QLHOSO_BENHVIEN]
GO
/****** Object:  Table [dbo].[bacsi]    Script Date: 8/2/2020 9:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bacsi](
	[id_bacsi] [int] NOT NULL,
	[hovaten] [nvarchar](254) NULL,
	[namsinh] [int] NULL,
	[chuyenmon] [nvarchar](254) NULL,
	[kinhnghiem] [int] NULL,
	[khoa] [nvarchar](254) NULL,
	[trinhdo] [nvarchar](254) NULL,
 CONSTRAINT [PK_bacsi] PRIMARY KEY CLUSTERED 
(
	[id_bacsi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dangkykhambenh]    Script Date: 8/2/2020 9:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dangkykhambenh](
	[id_phongkham] [int] NOT NULL,
	[id_benhnhan] [int] NULL,
	[hovatenbn] [nvarchar](254) NULL,
	[gioitinhbn] [nvarchar](50) NULL,
	[namsinhbn] [nvarchar](50) NULL,
	[id_bacsi] [int] NULL,
	[hovatenbs] [nvarchar](254) NULL,
	[khoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_dangkykhambenh] PRIMARY KEY CLUSTERED 
(
	[id_phongkham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hosobenhan]    Script Date: 8/2/2020 9:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hosobenhan](
	[id_hsba] [int] NOT NULL,
	[id_benhnhan] [int] NULL,
	[id_bacsi] [int] NULL,
	[id_khoanoi] [int] NULL,
	[id_khoangoai] [int] NULL,
	[ngaykhambenh] [varchar](50) NULL,
	[ketqua] [varchar](50) NULL,
	[id_phongkham] [int] NULL,
 CONSTRAINT [PK_hosobenhan] PRIMARY KEY CLUSTERED 
(
	[id_hsba] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hosobenhnhan]    Script Date: 8/2/2020 9:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hosobenhnhan](
	[id_benhnhan] [int] NOT NULL,
	[hovaten] [varchar](254) NULL,
	[gioitinh] [varchar](5) NULL,
	[diachi] [varchar](254) NULL,
	[namsinh] [varchar](254) NULL,
	[noisinh] [varchar](254) NULL,
	[cmnd] [int] NULL,
	[sdt] [int] NULL,
	[dantoc] [varchar](254) NULL,
	[nghenghiep] [varchar](254) NULL,
	[nhommau] [varchar](254) NULL,
	[chieucao] [varchar](254) NULL,
	[cannang] [int] NULL,
 CONSTRAINT [PK_hosobenhnhan] PRIMARY KEY CLUSTERED 
(
	[id_benhnhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[khoangoai]    Script Date: 8/2/2020 9:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khoangoai](
	[id_khoangoai] [int] NOT NULL,
	[hovatenbn] [nvarchar](254) NULL,
	[id_benhnhan] [int] NULL,
	[thucquan] [nvarchar](254) NULL,
	[tieuhoa] [nvarchar](254) NULL,
	[daday] [nvarchar](254) NULL,
	[gan] [nvarchar](254) NULL,
	[benhlongnguc] [nvarchar](254) NULL,
	[homantinh] [nvarchar](254) NULL,
	[chandoan] [nvarchar](254) NULL,
	[toathuoc] [nvarchar](254) NULL,
	[id_bacsi] [int] NULL,
 CONSTRAINT [PK_khoangoai] PRIMARY KEY CLUSTERED 
(
	[id_khoangoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khoanoi]    Script Date: 8/2/2020 9:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[khoanoi](
	[id_khoanoi] [int] NOT NULL,
	[hovatenbn] [varchar](254) NOT NULL,
	[id_benhnhan] [int] NULL,
	[benhlaynhiem] [nvarchar](254) NULL,
	[noithan] [nvarchar](254) NULL,
	[da] [nvarchar](254) NULL,
	[timmach] [nvarchar](254) NULL,
	[hohap] [varchar](254) NULL,
	[tieuhoa] [varchar](254) NULL,
	[chandoan] [varchar](254) NULL,
	[toathuoc] [varchar](254) NULL,
	[id_bacsi] [int] NULL,
 CONSTRAINT [PK_khoa_noi] PRIMARY KEY CLUSTERED 
(
	[id_khoanoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 8/2/2020 9:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[id_nhanvien] [int] NOT NULL,
	[hovaten] [nvarchar](254) NULL,
	[gioitinh] [nvarchar](50) NULL,
	[diachi] [nvarchar](254) NULL,
	[namsinh] [int] NULL,
	[noisinh] [nvarchar](254) NULL,
	[cmnd] [int] NULL,
	[sdt] [int] NULL,
	[trinhdohocvan] [nvarchar](254) NOT NULL,
	[email] [nvarchar](254) NULL,
	[tentaikhoan] [nvarchar](254) NULL,
	[matkhau] [nvarchar](254) NULL,
 CONSTRAINT [PK_nhanvien] PRIMARY KEY CLUSTERED 
(
	[id_nhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[dangkykhambenh]  WITH CHECK ADD  CONSTRAINT [FK_dangkykhambenh_bacsi] FOREIGN KEY([id_bacsi])
REFERENCES [dbo].[bacsi] ([id_bacsi])
GO
ALTER TABLE [dbo].[dangkykhambenh] CHECK CONSTRAINT [FK_dangkykhambenh_bacsi]
GO
ALTER TABLE [dbo].[hosobenhan]  WITH CHECK ADD  CONSTRAINT [FK_hosobenhan_bacsi] FOREIGN KEY([id_bacsi])
REFERENCES [dbo].[bacsi] ([id_bacsi])
GO
ALTER TABLE [dbo].[hosobenhan] CHECK CONSTRAINT [FK_hosobenhan_bacsi]
GO
ALTER TABLE [dbo].[hosobenhan]  WITH CHECK ADD  CONSTRAINT [FK_hosobenhan_dangkykhambenh] FOREIGN KEY([id_phongkham])
REFERENCES [dbo].[dangkykhambenh] ([id_phongkham])
GO
ALTER TABLE [dbo].[hosobenhan] CHECK CONSTRAINT [FK_hosobenhan_dangkykhambenh]
GO
ALTER TABLE [dbo].[hosobenhan]  WITH CHECK ADD  CONSTRAINT [FK_hosobenhan_hosobenhnhan] FOREIGN KEY([id_benhnhan])
REFERENCES [dbo].[hosobenhnhan] ([id_benhnhan])
GO
ALTER TABLE [dbo].[hosobenhan] CHECK CONSTRAINT [FK_hosobenhan_hosobenhnhan]
GO
ALTER TABLE [dbo].[hosobenhan]  WITH CHECK ADD  CONSTRAINT [FK_hosobenhan_khoangoai] FOREIGN KEY([id_khoangoai])
REFERENCES [dbo].[khoangoai] ([id_khoangoai])
GO
ALTER TABLE [dbo].[hosobenhan] CHECK CONSTRAINT [FK_hosobenhan_khoangoai]
GO
ALTER TABLE [dbo].[hosobenhan]  WITH CHECK ADD  CONSTRAINT [FK_hosobenhan_khoanoi] FOREIGN KEY([id_khoanoi])
REFERENCES [dbo].[khoanoi] ([id_khoanoi])
GO
ALTER TABLE [dbo].[hosobenhan] CHECK CONSTRAINT [FK_hosobenhan_khoanoi]
GO
USE [master]
GO
ALTER DATABASE [QLHOSO_BENHVIEN] SET  READ_WRITE 
GO
