SELECT DISTINCT[Gender]
FROM [StudentPerformance].[StudentPerformance].[Source_Data_Staging]
ORDER BY [Gender] ASC;

SELECT * FROM StudentPerformance.StudentPerformance.DimGender;

UPDATE StudentPerformance.StudentPerformance.Source_Data_Staging
SET StudentPerformance.StudentPerformance.Source_Data_Staging.GenderID = StudentPerformance.StudentPerformance.DimGender.GenderSK
From StudentPerformance.StudentPerformance.Source_Data_Staging
INNER JOIN StudentPerformance.StudentPerformance.DimGender ON StudentPerformance.StudentPerformance.Source_Data_Staging.[Gender] = StudentPerformance.StudentPerformance.DimGender.[Gender];