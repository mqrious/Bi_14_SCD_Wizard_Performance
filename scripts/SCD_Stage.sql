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
	[ID] [int] IDENTITY(1,1) PRIMARY Key,
	[Company Name] [varchar](50) NULL,
	[Corporate Department] [varchar](50) NULL,
	[Retail Department] [varchar](50) NULL,
	[Job Skill] [varchar](50) NULL,
	[Stock Sector] [varchar](50) NULL,
	[Date of Birth] Date,
	[University Name] [varchar](50) NULL,
	[School Subjects] [varchar](50) NULL,
	[Educational institution] [varchar](50) NULL,
	[Favorite Movie Genre] [varchar](50) NULL,
	[Favorite Movie] [varchar](50) NULL,
	[Favorite Book Authors] [varchar](50) NULL,
	[favorite Book] [varchar](50) NULL,
	[favorite Music Genre] [varchar](50) NULL,
	[favorite Song] [varchar](50) NULL,
	[Credit Card Type] [varchar](50) NULL,
	[Credit Card Number] [varchar](50) NULL,
	[Currency] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[US State] [varchar](50) NULL,
	[Street Address] [varchar](200) NULL,
	[Shipping Address] [varchar](500) NULL,
	[Bussiness Address] [varchar](200) NULL,
	[Language] [varchar](50) NULL,
	[Street] [varchar](50) NULL,
	[Clothes size] [varchar](50) NULL,
	[Car] [varchar](50) NULL,
	[Personal Identification Number] [varchar](50) NULL,
	[Phone Number] [varchar](50) NULL,
	[IPv4] [varchar](50) NULL,
	[Marital Status] [varchar](50) NULL,
	[Driver License] [varchar](50) NULL,
	[Note] [varchar](50) NULL
) ON [PRIMARY]
GO


