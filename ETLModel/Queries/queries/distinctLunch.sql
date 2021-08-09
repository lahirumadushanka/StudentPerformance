SELECT DISTINCT[Lunch]
FROM [StudentPerformance].[StudentPerformance].[Source_Data_Staging]
ORDER BY [Lunch] ASC;

SELECT * FROM StudentPerformance.StudentPerformance.DimLunch;

UPDATE StudentPerformance.StudentPerformance.Source_Data_Staging
SET StudentPerformance.StudentPerformance.Source_Data_Staging.LunchID = StudentPerformance.StudentPerformance.DimLunch.LunchSK
From StudentPerformance.StudentPerformance.Source_Data_Staging
INNER JOIN StudentPerformance.StudentPerformance.DimLunch ON StudentPerformance.StudentPerformance.Source_Data_Staging.[Lunch] = StudentPerformance.StudentPerformance.DimLunch.[Lunch];