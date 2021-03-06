USE [master]
GO
/****** Object:  Database [DominosLocationDatabase]    Script Date: 7/12/2020 11:42:48 PM ******/
CREATE DATABASE [DominosLocationDatabase]
GO
ALTER DATABASE [DominosLocationDatabase] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DominosLocationDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DominosLocationDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DominosLocationDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DominosLocationDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DominosLocationDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DominosLocationDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DominosLocationDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [DominosLocationDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DominosLocationDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DominosLocationDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DominosLocationDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DominosLocationDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DominosLocationDatabase] SET QUERY_STORE = OFF
GO
USE [DominosLocationDatabase]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [DominosLocationDatabase]
GO
/****** Object:  User [sqldockerusername]    Script Date: 7/12/2020 11:42:49 PM ******/
CREATE USER [sqldockerusername] FOR LOGIN [sqldockerusername] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[DominosLocation]    Script Date: 7/12/2020 11:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DominosLocation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SourceLatitude] [decimal](18, 10) NULL,
	[SourceLongitude] [decimal](18, 10) NULL,
	[DestinationLatitude] [decimal](18, 10) NULL,
	[DestinationLongitude] [decimal](18, 10) NULL,
 CONSTRAINT [PK_DominosLocation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DominosLocationDatabase] SET  READ_WRITE 
GO
