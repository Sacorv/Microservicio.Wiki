USE [master]
GO
/****** Object:  Database [MicroservicioWiki]    Script Date: 28/10/2022 20:23:47 ******/
CREATE DATABASE [MicroservicioWiki]
 /*CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MicroservicioWiki', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MicroservicioWiki.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MicroservicioWiki_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MicroservicioWiki_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO*/
/*ALTER DATABASE [MicroservicioWiki] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MicroservicioWiki].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MicroservicioWiki] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET ARITHABORT OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MicroservicioWiki] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MicroservicioWiki] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MicroservicioWiki] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MicroservicioWiki] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MicroservicioWiki] SET  MULTI_USER 
GO
ALTER DATABASE [MicroservicioWiki] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MicroservicioWiki] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MicroservicioWiki] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MicroservicioWiki] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MicroservicioWiki] SET DELAYED_DURABILITY = DISABLED 
GO*/
USE [MicroservicioWiki]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 28/10/2022 20:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulo](
	[IdArticulo] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](100) NOT NULL,
	[Contenido] [nvarchar](max) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Puntaje] [int] NULL,
	[IdColaborador] [int] NOT NULL,
	[IdCategoria] [int] NOT NULL,
 CONSTRAINT [PK_Articulo] PRIMARY KEY CLUSTERED 
(
	[IdArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 28/10/2022 20:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Colaborador]    Script Date: 28/10/2022 20:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colaborador](
	[IdColaborador] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NULL,
 CONSTRAINT [PK_Colaborador] PRIMARY KEY CLUSTERED 
(
	[IdColaborador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Articulo]  WITH CHECK ADD  CONSTRAINT [FK_Articulo_Colaborador] FOREIGN KEY([IdArticulo])
REFERENCES [dbo].[Categoria] ([IdCategoria])
GO
ALTER TABLE [dbo].[Articulo] CHECK CONSTRAINT [FK_Articulo_Colaborador]
/*GO
USE [master]
GO
ALTER DATABASE [MicroservicioWiki] SET  READ_WRITE 
GO*/
