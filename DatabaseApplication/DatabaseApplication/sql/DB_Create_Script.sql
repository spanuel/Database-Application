USE [master]
GO

CREATE DATABASE [DB_Application]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_Application', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\DB_Application.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_Application_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\DB_Application_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_Application].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [DB_Application] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [DB_Application] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [DB_Application] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [DB_Application] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [DB_Application] SET ARITHABORT OFF 
GO

ALTER DATABASE [DB_Application] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [DB_Application] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [DB_Application] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [DB_Application] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [DB_Application] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [DB_Application] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [DB_Application] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [DB_Application] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [DB_Application] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [DB_Application] SET  DISABLE_BROKER 
GO

ALTER DATABASE [DB_Application] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [DB_Application] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [DB_Application] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [DB_Application] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [DB_Application] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [DB_Application] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [DB_Application] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [DB_Application] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [DB_Application] SET  MULTI_USER 
GO

ALTER DATABASE [DB_Application] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [DB_Application] SET DB_CHAINING OFF 
GO

ALTER DATABASE [DB_Application] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [DB_Application] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [DB_Application] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [DB_Application] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [DB_Application] SET QUERY_STORE = OFF
GO

ALTER DATABASE [DB_Application] SET  READ_WRITE 
GO

-----------------------------------------------------------------------------------------------------------------------------------------




USE [DB_Application]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Emails](
	[EmailId] [int] IDENTITY(1,1) NOT NULL,
	[Recepient] [varchar](50) NULL,
	[Subject] [varchar](50) NULL,
	[Message] [varchar](max) NULL,
	[EmailSentTime] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Emails] ADD  CONSTRAINT [DF_Emails_EmailSentTime]  DEFAULT ((0)) FOR [EmailSentTime]
GO


