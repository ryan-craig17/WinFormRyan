USE [master]
GO
/****** Object:  Database [TransactBit]    Script Date: 10/11/2020 3:22:43 PM ******/
CREATE DATABASE [TransactBit]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TransactBit', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TransactBit.mdf' , SIZE = 7168KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TransactBit_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TransactBit_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TransactBit] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TransactBit].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TransactBit] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TransactBit] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TransactBit] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TransactBit] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TransactBit] SET ARITHABORT OFF 
GO
ALTER DATABASE [TransactBit] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TransactBit] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TransactBit] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TransactBit] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TransactBit] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TransactBit] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TransactBit] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TransactBit] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TransactBit] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TransactBit] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TransactBit] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TransactBit] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TransactBit] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TransactBit] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TransactBit] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TransactBit] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TransactBit] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TransactBit] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TransactBit] SET RECOVERY FULL 
GO
ALTER DATABASE [TransactBit] SET  MULTI_USER 
GO
ALTER DATABASE [TransactBit] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TransactBit] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TransactBit] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TransactBit] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TransactBit', N'ON'
GO
USE [TransactBit]
GO
/****** Object:  User [IIS APPPOOL\CryptoAppPool]    Script Date: 10/11/2020 3:22:43 PM ******/
CREATE USER [IIS APPPOOL\CryptoAppPool] FOR LOGIN [IIS APPPOOL\CryptoAppPool] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [IIS APPPOOL\CryptoAppPool]
GO
ALTER ROLE [db_datareader] ADD MEMBER [IIS APPPOOL\CryptoAppPool]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [IIS APPPOOL\CryptoAppPool]
GO
/****** Object:  Table [dbo].[Assets]    Script Date: 10/11/2020 3:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assets](
	[AssetType] [int] NOT NULL,
	[AssetSymbol] [nvarchar](50) NOT NULL,
	[AssetName] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 10/11/2020 3:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[Date] [datetime] NULL,
	[Time (UTC)] [datetime] NULL,
	[Type] [nvarchar](255) NULL,
	[Symbol] [nvarchar](255) NULL,
	[Specification] [nvarchar](255) NULL,
	[Liquidity Indicator] [nvarchar](255) NULL,
	[Trading Fee Rate (bps)] [float] NULL,
	[USD Amount] [money] NULL,
	[Trading Fee (USD)] [money] NULL,
	[USD Balance] [money] NULL,
	[BTC Amount] [float] NULL,
	[Trading Fee (BTC)] [nvarchar](255) NULL,
	[BTC Balance] [float] NULL,
	[ETH Amount] [float] NULL,
	[ETH Balance] [float] NULL,
	[Trade ID] [float] NULL,
	[Order ID] [float] NULL,
	[Order Date] [datetime] NULL,
	[Order Time] [datetime] NULL,
	[Client Order ID] [nvarchar](255) NULL,
	[API Session] [nvarchar](255) NULL,
	[Deposit Tx Hash] [nvarchar](255) NULL,
	[Deposit Tx Output] [nvarchar](255) NULL,
	[Withdrawal Destination] [nvarchar](255) NULL,
	[Withdrawal Tx Output] [nvarchar](255) NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [TransactBit] SET  READ_WRITE 
GO
