SELECT DISTINCT[Ethnicity]
FROM [StudentPerformance].[StudentPerformance].[Source_Data_Staging]
ORDER BY [Ethnicity] ASC;

SELECT * FROM StudentPerformance.StudentPerformance.DimEthnicity;

UPDATE StudentPerformance.StudentPerformance.Source_Data_Staging
SET StudentPerformance.StudentPerformance.Source_Data_Staging.EthnicityID = StudentPerformance.StudentPerformance.DimEthnicity.EthnicitySK
From StudentPerformance.StudentPerformance.Source_Data_Staging
INNER JOIN StudentPerformance.StudentPerformance.DimEthnicity ON StudentPerformance.StudentPerformance.Source_Data_Staging.[Ethnicity] = StudentPerformance.StudentPerformance.DimEthnicity.[Ethnicity];