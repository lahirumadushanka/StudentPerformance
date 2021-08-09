USE [StudentPerformance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [StudentPerformance].[Source_Data_Staging](
	[Source_StagingID] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [varchar](10) NULL,
	[GenderID] [int] NULL,
	[Ethnicity] [varchar](10) NULL,
	[EthnicityID] [int] NULL,
	[Parental_Level_of_Education] [varchar](100) NULL,
	[Parental_Level_of_EducationID] [int] NULL,
	[Lunch] [varchar](50) NULL,
	[LunchID] [int] NULL,
	[Test_Preparation_Course] [varchar](10) NULL,
	[Test_Preparation_CourseID] [int] NULL,
	[Math_Score] [int] NULL,
	[Reading_Score] [int] NULL,
	[Writing_Score] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Source_StagingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


