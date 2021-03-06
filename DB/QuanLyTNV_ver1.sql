USE [master]
GO
/****** Object:  Database [QuanLyTNV]    Script Date: 19/07/2016 22:57:06 ******/
CREATE DATABASE [QuanLyTNV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyTNV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QuanLyTNV.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyTNV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QuanLyTNV_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyTNV] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyTNV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyTNV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyTNV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyTNV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyTNV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyTNV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyTNV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyTNV] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyTNV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyTNV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyTNV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyTNV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyTNV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyTNV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyTNV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyTNV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyTNV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyTNV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyTNV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyTNV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyTNV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyTNV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyTNV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyTNV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyTNV] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyTNV] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyTNV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyTNV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyTNV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyTNV] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QuanLyTNV]
GO
/****** Object:  Table [dbo].[BloodDonationDetails]    Script Date: 19/07/2016 22:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BloodDonationDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NumOfDateDonation] [int] NULL,
	[Volunteer] [int] NULL,
	[NumOfBlood] [int] NULL,
	[Note] [ntext] NULL,
 CONSTRAINT [PK_BloodDonationDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BloodDonations]    Script Date: 19/07/2016 22:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BloodDonations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateDonation] [datetime] NULL,
	[ReceivingUnit] [int] NULL,
	[TotalBloodUnits] [int] NULL,
	[TotalVolunteers] [int] NULL,
	[Note] [ntext] NULL,
 CONSTRAINT [PK_BloodDonations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BloodGroups]    Script Date: 19/07/2016 22:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BloodGroups](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameOfBlood] [nvarchar](5) NULL,
	[Note] [ntext] NULL,
 CONSTRAINT [PK_BloodGroups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReceivingUnits]    Script Date: 19/07/2016 22:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReceivingUnits](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameReceivingUnit] [nvarchar](255) NULL,
	[Phone] [varchar](15) NULL,
	[Address] [ntext] NULL,
	[Note] [ntext] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_ReceivingUnits] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Status]    Script Date: 19/07/2016 22:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 19/07/2016 22:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[PassWord] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Volunteers]    Script Date: 19/07/2016 22:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Volunteers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[YearOfBirth] [int] NULL,
	[Phone] [varchar](15) NULL,
	[Gender] [nvarchar](3) NULL,
	[Address] [ntext] NULL,
	[Email] [varchar](50) NULL,
	[NumOfBloodDonation] [int] NULL,
	[LastDonation] [datetime] NULL,
	[BloodGroup] [int] NULL,
	[Unit] [int] NULL,
	[Note] [ntext] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Volunteers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VolunteerUnits]    Script Date: 19/07/2016 22:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VolunteerUnits](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameUnit] [nvarchar](255) NULL,
	[Address] [ntext] NULL,
	[Note] [ntext] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_VolunteerUnits] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[BloodDonationDetails]  WITH CHECK ADD  CONSTRAINT [FK_BloodDonationDetails_BloodDonations] FOREIGN KEY([NumOfDateDonation])
REFERENCES [dbo].[BloodDonations] ([ID])
GO
ALTER TABLE [dbo].[BloodDonationDetails] CHECK CONSTRAINT [FK_BloodDonationDetails_BloodDonations]
GO
ALTER TABLE [dbo].[BloodDonationDetails]  WITH CHECK ADD  CONSTRAINT [FK_BloodDonationDetails_Volunteers] FOREIGN KEY([Volunteer])
REFERENCES [dbo].[Volunteers] ([ID])
GO
ALTER TABLE [dbo].[BloodDonationDetails] CHECK CONSTRAINT [FK_BloodDonationDetails_Volunteers]
GO
ALTER TABLE [dbo].[BloodDonations]  WITH CHECK ADD  CONSTRAINT [FK_BloodDonations_ReceivingUnits] FOREIGN KEY([ReceivingUnit])
REFERENCES [dbo].[ReceivingUnits] ([ID])
GO
ALTER TABLE [dbo].[BloodDonations] CHECK CONSTRAINT [FK_BloodDonations_ReceivingUnits]
GO
ALTER TABLE [dbo].[ReceivingUnits]  WITH CHECK ADD  CONSTRAINT [FK_ReceivingUnits_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[ReceivingUnits] CHECK CONSTRAINT [FK_ReceivingUnits_Status]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Status]
GO
ALTER TABLE [dbo].[Volunteers]  WITH CHECK ADD  CONSTRAINT [FK_Volunteers_BloodGroups] FOREIGN KEY([BloodGroup])
REFERENCES [dbo].[BloodGroups] ([ID])
GO
ALTER TABLE [dbo].[Volunteers] CHECK CONSTRAINT [FK_Volunteers_BloodGroups]
GO
ALTER TABLE [dbo].[Volunteers]  WITH CHECK ADD  CONSTRAINT [FK_Volunteers_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[Volunteers] CHECK CONSTRAINT [FK_Volunteers_Status]
GO
ALTER TABLE [dbo].[VolunteerUnits]  WITH CHECK ADD  CONSTRAINT [FK_VolunteerUnits_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[VolunteerUnits] CHECK CONSTRAINT [FK_VolunteerUnits_Status]
GO
USE [master]
GO
ALTER DATABASE [QuanLyTNV] SET  READ_WRITE 
GO
