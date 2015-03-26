USE [Assignment2]
GO

/****** Object:  Table [dbo].[Admin_Logins]    Script Date: 02/04/2010 17:10:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Admin_Logins](
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Assignment2]
GO

/****** Object:  Table [dbo].[Bed]    Script Date: 02/04/2010 17:10:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Bed](
	[Id] [varchar](50) NOT NULL,
	[PatientId] [int] NULL,
	[BedName] [varchar](50) NOT NULL,
	[RatePerDay] [int] NOT NULL,
	[BedType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Bed] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Assignment2]
GO

/****** Object:  Table [dbo].[Doctor]    Script Date: 02/04/2010 17:10:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Doctor](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](255) NULL,
	[Phone] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Assignment2]
GO

/****** Object:  Table [dbo].[Logins]    Script Date: 02/04/2010 17:10:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Logins](
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Assignment2]
GO

/****** Object:  Table [dbo].[Patient]    Script Date: 02/04/2010 17:10:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Patient](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Phone] [varchar](50) NULL,
	[EmergencyContact] [varchar](50) NOT NULL,
	[DateOfRegistration] [date] NOT NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Assignment2]
GO

/****** Object:  Table [dbo].[Visit]    Script Date: 02/04/2010 17:10:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Visit](
	[Id] [int] NULL,
	[PatientId] [int] NOT NULL,
	[PatientType] [int] NOT NULL,
	[BedId] [varchar](50) NULL,
	[DoctorId] [int] NOT NULL,
	[DateOfVisit] [date] NOT NULL,
	[DateOfDischarge] [date] NULL,
	[Symptoms] [varchar](50) NULL,
	[Disease] [varchar](50) NULL,
	[Treatment] [varchar](50) NOT NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


