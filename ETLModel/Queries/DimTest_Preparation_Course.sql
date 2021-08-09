USE [StudentPerformance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [StudentPerformance].[FactStudentPerformance](
	[StudentPerformanceID] [int] IDENTITY(1,1) NOT NULL,
	[GenderSK] [int] NULL,
	[EthnicitySK] [int] NULL,
	[Parental_Level_of_EducationSK] [int] NULL,
	[LunchSK] [int] NULL,
	[Test_Preparation_CourseSK] [int] NULL,
	[Math_Score] [int] NULL,
	[Reading_Score] [int] NULL,
	[Writing_Score] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentPerformanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [StudentPerformance].[FactStudentPerformance]  WITH CHECK ADD  CONSTRAINT [FK_GenderSK] FOREIGN KEY([GenderSK])
REFERENCES [StudentPerformance].[DimGender] ([GenderSK])
GO

ALTER TABLE [StudentPerformance].[FactStudentPerformance] CHECK CONSTRAINT [FK_GenderSK]
GO

ALTER TABLE [StudentPerformance].[FactStudentPerformance]  WITH CHECK ADD  CONSTRAINT [FK_EthnicitySK] FOREIGN KEY([EthnicitySK])
REFERENCES [StudentPerformance].[DimEthnicity] ([EthnicitySK])
GO

ALTER TABLE [StudentPerformance].[FactStudentPerformance] CHECK CONSTRAINT [FK_EthnicitySK]
GO

ALTER TABLE [StudentPerformance].[FactStudentPerformance]  WITH CHECK ADD  CONSTRAINT [FK_Parental_Level_of_EducationSK] FOREIGN KEY([Parental_Level_of_EducationSK])
REFERENCES [StudentPerformance].[DimParental_Level_of_Education] ([Parental_Level_of_EducationSK])
GO

ALTER TABLE [StudentPerformance].[FactStudentPerformance] CHECK CONSTRAINT [FK_Parental_Level_of_EducationSK]
GO

ALTER TABLE [StudentPerformance].[FactStudentPerformance]  WITH CHECK ADD  CONSTRAINT [FK_LunchSK] FOREIGN KEY([LunchSK])
REFERENCES [StudentPerformance].[DimLunch] ([LunchSK])
GO

ALTER TABLE [StudentPerformance].[FactStudentPerformance] CHECK CONSTRAINT [FK_LunchSK]
GO

ALTER TABLE [StudentPerformance].[FactStudentPerformance]  WITH CHECK ADD  CONSTRAINT [FK_Test_Preparation_CourseSK] FOREIGN KEY([Test_Preparation_CourseSK])
REFERENCES [StudentPerformance].[DimTest_Preparation_Course] ([Test_Preparation_CourseSK])
GO

ALTER TABLE [StudentPerformance].[FactStudentPerformance] CHECK CONSTRAINT [FK_Test_Preparation_CourseSK]
GO



