CREATE DATABASE [SCD_Stage]
GO

USE [SCD_Stage]
GO

/****** Object:  Table [dbo].[Customers]    Script Date: 17/12/2021 10:38:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customers](
	[Job Title] [varchar](50) NULL,
	[Email Address] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Sex] [varchar](1) NULL,
	[City] [varchar](50) NULL,
	[ID] [int] NULL
) ON [PRIMARY]
GO


