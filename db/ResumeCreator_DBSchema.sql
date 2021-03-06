DROP DATABASE [ResumeCreator]
CREATE DATABASE [ResumeCreator]
USE [ResumeCreator]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserProfile_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserProfile]'))
ALTER TABLE [dbo].[UserProfile] DROP CONSTRAINT [FK_UserProfile_LoginProfile]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProfileSkills_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[TechnicalSkills]'))
ALTER TABLE [dbo].[TechnicalSkills] DROP CONSTRAINT [FK_ProfileSkills_LoginProfile]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SummarySkills_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[SummarySkills]'))
ALTER TABLE [dbo].[SummarySkills] DROP CONSTRAINT [FK_SummarySkills_LoginProfile]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectDetails_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectDetails]'))
ALTER TABLE [dbo].[ProjectDetails] DROP CONSTRAINT [FK_ProjectDetails_LoginProfile]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployerHistory_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployerHistory]'))
ALTER TABLE [dbo].[EmployerHistory] DROP CONSTRAINT [FK_EmployerHistory_LoginProfile]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EducationDetails_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[EducationDetails]'))
ALTER TABLE [dbo].[EducationDetails] DROP CONSTRAINT [FK_EducationDetails_LoginProfile]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CertificateDetails_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[CertificateDetails]'))
ALTER TABLE [dbo].[CertificateDetails] DROP CONSTRAINT [FK_CertificateDetails_LoginProfile]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProfileSkills_DisplayOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TechnicalSkills] DROP CONSTRAINT [DF_ProfileSkills_DisplayOrder]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SummarySkills_DisplayOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SummarySkills] DROP CONSTRAINT [DF_SummarySkills_DisplayOrder]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProjectDetails_DisplayOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProjectDetails] DROP CONSTRAINT [DF_ProjectDetails_DisplayOrder]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_EmployerHistory_DisplayOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EmployerHistory] DROP CONSTRAINT [DF_EmployerHistory_DisplayOrder]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_EducationDetails_DisplayOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EducationDetails] DROP CONSTRAINT [DF_EducationDetails_DisplayOrder]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_CertificateDetails_DisplayOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CertificateDetails] DROP CONSTRAINT [DF_CertificateDetails_DisplayOrder]
END

GO
/****** Object:  Index [UQ_Username_LoginProfile]    Script Date: 08/16/17 11:17:10 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LoginProfile]') AND name = N'UQ_Username_LoginProfile')
ALTER TABLE [dbo].[LoginProfile] DROP CONSTRAINT [UQ_Username_LoginProfile]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 08/16/17 11:17:10 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserProfile]') AND type in (N'U'))
DROP TABLE [dbo].[UserProfile]
GO
/****** Object:  Table [dbo].[TechnicalSkills]    Script Date: 08/16/17 11:17:10 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TechnicalSkills]') AND type in (N'U'))
DROP TABLE [dbo].[TechnicalSkills]
GO
/****** Object:  Table [dbo].[SummarySkills]    Script Date: 08/16/17 11:17:10 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SummarySkills]') AND type in (N'U'))
DROP TABLE [dbo].[SummarySkills]
GO
/****** Object:  Table [dbo].[ProjectDetails]    Script Date: 08/16/17 11:17:10 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectDetails]') AND type in (N'U'))
DROP TABLE [dbo].[ProjectDetails]
GO
/****** Object:  Table [dbo].[MasterDetails]    Script Date: 08/16/17 11:17:10 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterDetails]') AND type in (N'U'))
DROP TABLE [dbo].[MasterDetails]
GO
/****** Object:  Table [dbo].[LoginProfile]    Script Date: 08/16/17 11:17:10 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoginProfile]') AND type in (N'U'))
DROP TABLE [dbo].[LoginProfile]
GO
/****** Object:  Table [dbo].[EmployerHistory]    Script Date: 08/16/17 11:17:10 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployerHistory]') AND type in (N'U'))
DROP TABLE [dbo].[EmployerHistory]
GO
/****** Object:  Table [dbo].[EducationDetails]    Script Date: 08/16/17 11:17:10 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EducationDetails]') AND type in (N'U'))
DROP TABLE [dbo].[EducationDetails]
GO
/****** Object:  Table [dbo].[CertificateDetails]    Script Date: 08/16/17 11:17:10 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CertificateDetails]') AND type in (N'U'))
DROP TABLE [dbo].[CertificateDetails]
GO
USE [master]
GO
/****** Object:  Database [ResumeCreator]    Script Date: 08/16/17 11:17:10 PM ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'ResumeCreator')
DROP DATABASE [ResumeCreator]
GO
/****** Object:  Database [ResumeCreator]    Script Date: 08/16/17 11:17:10 PM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'ResumeCreator')
BEGIN
CREATE DATABASE [ResumeCreator] ON  PRIMARY 
( NAME = N'ResumeCreator', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ResumeCreator.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ResumeCreator_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ResumeCreator_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ResumeCreator].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ResumeCreator] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ResumeCreator] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ResumeCreator] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ResumeCreator] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ResumeCreator] SET ARITHABORT OFF 
GO
ALTER DATABASE [ResumeCreator] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ResumeCreator] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ResumeCreator] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ResumeCreator] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ResumeCreator] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ResumeCreator] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ResumeCreator] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ResumeCreator] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ResumeCreator] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ResumeCreator] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ResumeCreator] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ResumeCreator] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ResumeCreator] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ResumeCreator] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ResumeCreator] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ResumeCreator] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ResumeCreator] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ResumeCreator] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ResumeCreator] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ResumeCreator] SET  MULTI_USER 
GO
ALTER DATABASE [ResumeCreator] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ResumeCreator] SET DB_CHAINING OFF 
GO
USE [ResumeCreator]
GO
/****** Object:  Table [dbo].[CertificateDetails]    Script Date: 08/16/17 11:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CertificateDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CertificateDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [int] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Institute] [nvarchar](1024) NOT NULL,
	[FromYear] [int] NOT NULL,
	[ToYear] [int] NULL,
	[HasNoExpiry] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_CertificateDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EducationDetails]    Script Date: 08/16/17 11:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EducationDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EducationDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [int] NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Specialization] [nvarchar](512) NULL,
	[University] [nvarchar](250) NOT NULL,
	[FromMonth] [int] NOT NULL,
	[FromYear] [int] NOT NULL,
	[ToMonth] [int] NULL,
	[ToYear] [int] NULL,
	[IsCurrent] [bit] NOT NULL,
	[Percentage] [float] NULL,
	[DisplayOrder] [int] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_EducationDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EmployerHistory]    Script Date: 08/16/17 11:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployerHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployerHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [int] NOT NULL,
	[EmployerName] [nvarchar](512) NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[FromMonth] [int] NOT NULL,
	[FromYear] [int] NOT NULL,
	[ToMonth] [int] NULL,
	[ToYear] [int] NULL,
	[Designation] [nvarchar](250) NOT NULL,
	[TeamSize] [int] NOT NULL,
	[JobProfile] [nvarchar](4000) NOT NULL,
	[NoticePeriod] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_EmployerHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LoginProfile]    Script Date: 08/16/17 11:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoginProfile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoginProfile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](128) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LoginProfile] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MasterDetails]    Script Date: 08/16/17 11:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MasterDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DisplayText] [nvarchar](256) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[MasterType] [nvarchar](64) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_MasterDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProjectDetails]    Script Date: 08/16/17 11:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProjectDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [int] NOT NULL,
	[Client] [nvarchar](512) NOT NULL,
	[ProjectTitle] [nvarchar](512) NOT NULL,
	[FromMonth] [int] NOT NULL,
	[FromYear] [int] NOT NULL,
	[ToMonth] [int] NULL,
	[ToYear] [int] NULL,
	[IsCurrent] [bit] NOT NULL,
	[ProjectLocation] [nvarchar](250) NULL,
	[IsOnsite] [bit] NOT NULL,
	[EmploymentType] [int] NOT NULL,
	[ProjectDetails] [nvarchar](1000) NOT NULL,
	[Role] [int] NOT NULL,
	[RoleDescription] [nvarchar](250) NOT NULL,
	[TeamSize] [int] NOT NULL,
	[SkillsUsed] [nvarchar](1024) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ProjectDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SummarySkills]    Script Date: 08/16/17 11:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SummarySkills]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SummarySkills](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [int] NOT NULL,
	[DisplayText] [nvarchar](2048) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SummarySkills] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TechnicalSkills]    Script Date: 08/16/17 11:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TechnicalSkills]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TechnicalSkills](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [int] NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[Version] [nvarchar](128) NULL,
	[LastUsed] [int] NOT NULL,
	[ExperienceYear] [int] NOT NULL,
	[ExperienceMonth] [int] NOT NULL,
	[ProfileID] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ProfileSkills] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 08/16/17 11:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserProfile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserProfile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [int] NOT NULL,
	[Objective] [nvarchar](4000) NULL,
	[FirstName] [nvarchar](45) NOT NULL,
	[LastName] [nvarchar](45) NOT NULL,
	[Email] [nvarchar](128) NOT NULL,
	[Contact] [nvarchar](14) NOT NULL,
	[Address1] [nvarchar](256) NOT NULL,
	[Address2] [nvarchar](256) NULL,
	[City] [nvarchar](528) NOT NULL,
	[State] [int] NOT NULL,
	[Country] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_UserProfile] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[LoginProfile] ON 

GO
INSERT [dbo].[LoginProfile] ([ID], [Username], [Password], [CreatedOn]) VALUES (1, N'ganesh.c3110', N'mail@3110', CAST(0x0000A7CB00A793EE AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[LoginProfile] OFF
GO
SET IDENTITY_INSERT [dbo].[MasterDetails] ON 

GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (1, N'Andaman and Nicobar Islands', 1, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (2, N'Andhra Pradesh', 2, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (3, N'Arunachal Pradesh', 3, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (4, N'Assam', 4, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (5, N'Bihar', 5, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (6, N'Chandigarh', 6, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (7, N'Chhattisgarh', 7, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (8, N'Dadra and Nagar Haveli', 8, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (9, N'Daman and Diu', 9, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (10, N'Delhi', 10, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (11, N'Goa', 11, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (12, N'Gujarat', 12, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (13, N'Haryana', 13, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (14, N'Himachal Pradesh', 14, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (15, N'Jammu and Kashmir', 15, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (16, N'Jharkhand', 16, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (17, N'Karnataka', 17, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (18, N'Kerala', 18, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (19, N'Lakshadweep', 19, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (20, N'Madhya Pradesh', 20, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (21, N'Maharashtra', 21, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (22, N'Manipur', 22, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (23, N'Meghalaya', 23, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (24, N'Mizoram', 24, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (25, N'Nagaland', 25, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (26, N'Odisha', 26, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (27, N'Puducherry', 27, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (28, N'Punjab', 28, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (29, N'Rajasthan', 29, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (30, N'Sikkim', 30, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (31, N'Tamil Nadu', 31, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (32, N'Tripura', 32, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (33, N'Uttar Pradesh', 33, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (34, N'Uttarakhand', 34, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (35, N'West Bengal', 35, N'State', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (36, N'India', 1, N'Country', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (37, N'Full Time', 1, N'EmploymentType', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (38, N'Part Time', 2, N'EmploymentType', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (39, N'Contractual Project', 3, N'EmploymentType', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (40, N'Domain Expert', 1, N'Role', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (41, N'Sr. Project Leader', 2, N'Role', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (42, N'Solution Architect', 3, N'Role', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (43, N'Quality Analyst', 4, N'Role', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (44, N'Database Architect/DBA', 5, N'Role', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (45, N'Network/System Administrator', 6, N'Role', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (46, N'Project Leader', 7, N'Role', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (47, N'Module Leader', 8, N'Role', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (48, N'Sr. Programmer', 9, N'Role', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (49, N'Programmer', 10, N'Role', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (50, N'Test Engineer', 11, N'Role', 0)
GO
INSERT [dbo].[MasterDetails] ([ID], [DisplayText], [DisplayOrder], [MasterType], [IsDeleted]) VALUES (51, N'Other', 12, N'Role', 0)
GO
SET IDENTITY_INSERT [dbo].[MasterDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[UserProfile] ON 

GO
INSERT [dbo].[UserProfile] ([ID], [LoginID], [Objective], [FirstName], [LastName], [Email], [Contact], [Address1], [Address2], [City], [State], [Country], [CreatedOn], [UpdatedOn]) VALUES (1, 1, NULL, N'Ganesh', N'Choudhari', N'ganesh.c3110@gmail.com', N'09699071072', N'11/2 Pushpa Apt', N'Near HOC Colony, Old Thana Naka Road', N'Panvel', 21, 1, CAST(0x0000A7CB00A87DB0 AS DateTime), CAST(0x0000A7CB00A87DB0 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_Username_LoginProfile]    Script Date: 08/16/17 11:17:10 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LoginProfile]') AND name = N'UQ_Username_LoginProfile')
ALTER TABLE [dbo].[LoginProfile] ADD  CONSTRAINT [UQ_Username_LoginProfile] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_CertificateDetails_DisplayOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CertificateDetails] ADD  CONSTRAINT [DF_CertificateDetails_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_EducationDetails_DisplayOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EducationDetails] ADD  CONSTRAINT [DF_EducationDetails_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_EmployerHistory_DisplayOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EmployerHistory] ADD  CONSTRAINT [DF_EmployerHistory_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProjectDetails_DisplayOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProjectDetails] ADD  CONSTRAINT [DF_ProjectDetails_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SummarySkills_DisplayOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SummarySkills] ADD  CONSTRAINT [DF_SummarySkills_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProfileSkills_DisplayOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TechnicalSkills] ADD  CONSTRAINT [DF_ProfileSkills_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CertificateDetails_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[CertificateDetails]'))
ALTER TABLE [dbo].[CertificateDetails]  WITH CHECK ADD  CONSTRAINT [FK_CertificateDetails_LoginProfile] FOREIGN KEY([LoginID])
REFERENCES [dbo].[LoginProfile] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CertificateDetails_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[CertificateDetails]'))
ALTER TABLE [dbo].[CertificateDetails] CHECK CONSTRAINT [FK_CertificateDetails_LoginProfile]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EducationDetails_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[EducationDetails]'))
ALTER TABLE [dbo].[EducationDetails]  WITH CHECK ADD  CONSTRAINT [FK_EducationDetails_LoginProfile] FOREIGN KEY([LoginID])
REFERENCES [dbo].[LoginProfile] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EducationDetails_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[EducationDetails]'))
ALTER TABLE [dbo].[EducationDetails] CHECK CONSTRAINT [FK_EducationDetails_LoginProfile]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployerHistory_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployerHistory]'))
ALTER TABLE [dbo].[EmployerHistory]  WITH CHECK ADD  CONSTRAINT [FK_EmployerHistory_LoginProfile] FOREIGN KEY([LoginID])
REFERENCES [dbo].[LoginProfile] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployerHistory_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployerHistory]'))
ALTER TABLE [dbo].[EmployerHistory] CHECK CONSTRAINT [FK_EmployerHistory_LoginProfile]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectDetails_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectDetails]'))
ALTER TABLE [dbo].[ProjectDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDetails_LoginProfile] FOREIGN KEY([LoginID])
REFERENCES [dbo].[LoginProfile] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectDetails_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectDetails]'))
ALTER TABLE [dbo].[ProjectDetails] CHECK CONSTRAINT [FK_ProjectDetails_LoginProfile]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SummarySkills_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[SummarySkills]'))
ALTER TABLE [dbo].[SummarySkills]  WITH CHECK ADD  CONSTRAINT [FK_SummarySkills_LoginProfile] FOREIGN KEY([LoginID])
REFERENCES [dbo].[LoginProfile] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SummarySkills_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[SummarySkills]'))
ALTER TABLE [dbo].[SummarySkills] CHECK CONSTRAINT [FK_SummarySkills_LoginProfile]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProfileSkills_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[TechnicalSkills]'))
ALTER TABLE [dbo].[TechnicalSkills]  WITH CHECK ADD  CONSTRAINT [FK_ProfileSkills_LoginProfile] FOREIGN KEY([LoginID])
REFERENCES [dbo].[LoginProfile] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProfileSkills_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[TechnicalSkills]'))
ALTER TABLE [dbo].[TechnicalSkills] CHECK CONSTRAINT [FK_ProfileSkills_LoginProfile]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserProfile_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserProfile]'))
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_UserProfile_LoginProfile] FOREIGN KEY([LoginID])
REFERENCES [dbo].[LoginProfile] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserProfile_LoginProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserProfile]'))
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_UserProfile_LoginProfile]
GO
USE [master]
GO
ALTER DATABASE [ResumeCreator] SET  READ_WRITE 
GO
