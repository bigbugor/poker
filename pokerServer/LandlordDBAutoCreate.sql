USE [master]
GO
/****** Object:  Database [LandlordDB]    Script Date: 08/17/2018 08:43:35 ******/
CREATE DATABASE [LandlordDB] ON  PRIMARY 
( NAME = N'LandlordDB', FILENAME = N'D:\\Study\\Android\\poker_server\\pokerServer\\LandlordDB.mdf' , SIZE = 5120KB , MAXSIZE = 51200KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RSGLXT_log', FILENAME = N'D:\\Study\\Android\\poker_server\\pokerServer\\LandlordDB.ldf' , SIZE = 3072KB , MAXSIZE = 25600KB , FILEGROWTH = 1024KB )
GO
ALTER DATABASE [LandlordDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LandlordDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LandlordDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [LandlordDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [LandlordDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [LandlordDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [LandlordDB] SET ARITHABORT OFF
GO
ALTER DATABASE [LandlordDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [LandlordDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [LandlordDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [LandlordDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [LandlordDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [LandlordDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [LandlordDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [LandlordDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [LandlordDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [LandlordDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [LandlordDB] SET  ENABLE_BROKER
GO
ALTER DATABASE [LandlordDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [LandlordDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [LandlordDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [LandlordDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [LandlordDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [LandlordDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [LandlordDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [LandlordDB] SET  READ_WRITE
GO
ALTER DATABASE [LandlordDB] SET RECOVERY FULL
GO
ALTER DATABASE [LandlordDB] SET  MULTI_USER
GO
ALTER DATABASE [LandlordDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [LandlordDB] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'LandlordDB', N'ON'
GO
USE [LandlordDB]
GO
/****** Object:  Table [dbo].[USER_Table]    Script Date: 08/17/2018 08:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_Table](
	[username] [nvarchar](15) NOT NULL,
	[password] [nvarchar](20) NULL,
	[name] [nvarchar](10) NULL,
	[sex] [bit] NULL,
	[score] [int] NULL,
	[image] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [USERNAME_INDEX] ON [dbo].[USER_Table] 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Default [DF__USER_Table__sex__014935CB]    Script Date: 08/17/2018 08:43:36 ******/
ALTER TABLE [dbo].[USER_Table] ADD  DEFAULT ((1)) FOR [sex]
GO
/****** Object:  Default [DF__USER_Tabl__score__023D5A04]    Script Date: 08/17/2018 08:43:36 ******/
ALTER TABLE [dbo].[USER_Table] ADD  DEFAULT ((0)) FOR [score]
GO
/****** Object:  Default [DF__USER_Tabl__image__03317E3D]    Script Date: 08/17/2018 08:43:36 ******/
ALTER TABLE [dbo].[USER_Table] ADD  DEFAULT ((0)) FOR [image]
GO
