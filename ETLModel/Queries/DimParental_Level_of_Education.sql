USE [StudentPerformance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [StudentPerformance].[DimParental_Level_of_Education](
	[Parental_Level_of_EducationSK] [int] IDENTITY(1,1) NOT NULL,
	[Parental_Level_of_Education] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Parental_Level_of_EducationSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


