USE [master]
GO
/****** Object:  Database [restaurant]    Script Date: 2021/2/4 19:55:59 ******/
CREATE DATABASE [restaurant]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'restaurant', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\restaurant.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'restaurant_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\restaurant_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [restaurant] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [restaurant].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [restaurant] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [restaurant] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [restaurant] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [restaurant] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [restaurant] SET ARITHABORT OFF 
GO
ALTER DATABASE [restaurant] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [restaurant] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [restaurant] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [restaurant] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [restaurant] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [restaurant] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [restaurant] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [restaurant] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [restaurant] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [restaurant] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [restaurant] SET  ENABLE_BROKER 
GO
ALTER DATABASE [restaurant] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [restaurant] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [restaurant] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [restaurant] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [restaurant] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [restaurant] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [restaurant] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [restaurant] SET RECOVERY FULL 
GO
ALTER DATABASE [restaurant] SET  MULTI_USER 
GO
ALTER DATABASE [restaurant] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [restaurant] SET DB_CHAINING OFF 
GO
ALTER DATABASE [restaurant] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [restaurant] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'restaurant', N'ON'
GO
USE [restaurant]
GO
/****** Object:  Table [dbo].[desk]    Script Date: 2021/2/4 19:55:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[desk](
	[d_no] [int] NOT NULL,
	[d_state] [int] NULL,
	[d_num] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[d_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[menu]    Script Date: 2021/2/4 19:55:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[menu](
	[m_no] [int] NOT NULL,
	[m_type] [int] NULL,
	[m_name] [varchar](20) NULL,
	[m_price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[m_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_order]    Script Date: 2021/2/4 19:55:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_order](
	[uo_no] [int] NOT NULL,
	[d_no] [int] NULL,
	[uo_num] [int] NULL,
	[uo_date] [datetime] NULL,
	[uo_enddate] [datetime] NULL,
	[uo_state] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uo_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user_order_add]    Script Date: 2021/2/4 19:55:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_order_add](
	[uoa_no] [int] NOT NULL,
	[m_no] [int] NOT NULL,
	[uoa_num] [int] NULL,
	[uoa_sum_price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[uoa_no] ASC,
	[m_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[desk] ([d_no], [d_state], [d_num]) VALUES (1, 1, 4)
INSERT [dbo].[desk] ([d_no], [d_state], [d_num]) VALUES (2, 0, 10)
INSERT [dbo].[desk] ([d_no], [d_state], [d_num]) VALUES (3, 0, 9)
INSERT [dbo].[desk] ([d_no], [d_state], [d_num]) VALUES (4, 0, 20)
INSERT [dbo].[desk] ([d_no], [d_state], [d_num]) VALUES (5, 1, 6)
INSERT [dbo].[desk] ([d_no], [d_state], [d_num]) VALUES (6, 0, 6)
INSERT [dbo].[desk] ([d_no], [d_state], [d_num]) VALUES (7, 0, 6)
INSERT [dbo].[desk] ([d_no], [d_state], [d_num]) VALUES (8, 0, 10)
INSERT [dbo].[desk] ([d_no], [d_state], [d_num]) VALUES (9, 0, 15)
INSERT [dbo].[desk] ([d_no], [d_state], [d_num]) VALUES (10, 0, 20)
INSERT [dbo].[menu] ([m_no], [m_type], [m_name], [m_price]) VALUES (1, 1, N'红烧肉', 8.5)
INSERT [dbo].[menu] ([m_no], [m_type], [m_name], [m_price]) VALUES (2, 2, N'拍黄瓜', 5)
INSERT [dbo].[menu] ([m_no], [m_type], [m_name], [m_price]) VALUES (3, 3, N'米饭', 0.5)
INSERT [dbo].[menu] ([m_no], [m_type], [m_name], [m_price]) VALUES (4, 4, N'可乐', 7)
INSERT [dbo].[menu] ([m_no], [m_type], [m_name], [m_price]) VALUES (5, 1, N'糖醋鳕鱼', 16)
INSERT [dbo].[menu] ([m_no], [m_type], [m_name], [m_price]) VALUES (6, 2, N'火山下雪', 10)
INSERT [dbo].[menu] ([m_no], [m_type], [m_name], [m_price]) VALUES (7, 3, N'馒头', 1)
INSERT [dbo].[menu] ([m_no], [m_type], [m_name], [m_price]) VALUES (8, 4, N'雪碧', 7)
INSERT [dbo].[menu] ([m_no], [m_type], [m_name], [m_price]) VALUES (9, 4, N'小可乐', 3)
INSERT [dbo].[menu] ([m_no], [m_type], [m_name], [m_price]) VALUES (10, 4, N'小可乐', 3)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (1, 1, 3, CAST(0x0000AC5201778F76 AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (2, 2, 8, CAST(0x0000AC5201778F79 AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (3, 3, 4, CAST(0x0000AC5201781770 AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (4, 4, 8, CAST(0x0000AC520178A9CF AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (5, 3, 2, CAST(0x0000AC52017A0347 AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (6, 1, 1, CAST(0x0000AC52017A587F AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (7, 2, 2, CAST(0x0000AC52017B7D62 AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (8, 3, 1, CAST(0x0000AC52017C2910 AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (9, 1, 2, CAST(0x0000AC52017CA2AE AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (10, 2, 1, CAST(0x0000AC52017E9ECD AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (11, 4, 1, CAST(0x0000AC52017F340D AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (12, 5, 1, CAST(0x0000AC52017FEC08 AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (13, 6, 1, CAST(0x0000AC52018225F0 AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (14, 7, 1, CAST(0x0000AC520185DD51 AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (15, 9, 1, CAST(0x0000AC5201876D3F AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (16, 1, 1, CAST(0x0000AC52018A3914 AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (17, 2, 1, CAST(0x0000AC5300010190 AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (18, 1, 2, CAST(0x0000AC530001F1DF AS DateTime), NULL, 1)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (19, 3, 1, CAST(0x0000AC530002CCD3 AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (20, 3, 2, CAST(0x0000AC56012BCB38 AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (21, 5, 2, CAST(0x0000AC7500A2D14C AS DateTime), NULL, 1)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (22, 7, 4, CAST(0x0000AC7A00D6265A AS DateTime), NULL, 0)
INSERT [dbo].[user_order] ([uo_no], [d_no], [uo_num], [uo_date], [uo_enddate], [uo_state]) VALUES (23, 2, 1, CAST(0x0000AC9800A4F4B8 AS DateTime), NULL, 0)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (1, 1, 2, 17)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (1, 3, 5, 2.5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (3, 1, 1, 8.5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (4, 2, 1, 5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (4, 4, 3, 21)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (4, 6, 1, 10)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (5, 0, 0, 0)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (5, 1, 1, 8.5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (5, 4, 1, 7)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (5, 6, 1, 10)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (5, 8, 1, 7)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (6, 0, 0, 0)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (7, 1, 1, 8.5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (7, 5, 1, 16)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (8, 2, 1, 5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (9, 3, 1, 0.5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (9, 4, 1, 7)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (9, 7, 1, 1)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (10, 2, 1, 0)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (11, 5, 1, 0)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (12, 2, 1, 5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (13, 1, 1, 8.5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (15, 2, 1, 5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (15, 4, 1, 7)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (15, 6, 2, 20)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (15, 8, 1, 7)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (16, 1, 1, 8.5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (16, 4, 1, 10)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (16, 6, 1, 8.5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (16, 7, 1, 7)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (17, 1, 1, 8.5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (17, 2, 1, 5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (17, 3, 1, 0.5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (17, 4, 1, 7)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (17, 6, 1, 10)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (17, 7, 1, 1)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (17, 8, 2, 14)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (18, 1, 1, 8.5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (18, 3, 3, 1.5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (18, 4, 2, 14)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (18, 6, 1, 10)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (18, 7, 1, 1)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (18, 8, 1, 7)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (19, 1, 1, 8.5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (19, 3, 10, 5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (19, 4, 1, 7)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (19, 8, 5, 35)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (20, 2, 1, 5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (20, 7, 1, 1)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (20, 8, 1, 7)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (21, 2, 1, 5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (21, 4, 1, 7)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (21, 8, 3, 21)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (22, 2, 1, 5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (22, 3, 4, 2)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (22, 4, 2, 14)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (23, 1, 1, 8.5)
INSERT [dbo].[user_order_add] ([uoa_no], [m_no], [uoa_num], [uoa_sum_price]) VALUES (23, 2, 2, 10)
ALTER TABLE [dbo].[user_order_add]  WITH CHECK ADD FOREIGN KEY([uoa_no])
REFERENCES [dbo].[user_order] ([uo_no])
GO
USE [master]
GO
ALTER DATABASE [restaurant] SET  READ_WRITE 
GO
