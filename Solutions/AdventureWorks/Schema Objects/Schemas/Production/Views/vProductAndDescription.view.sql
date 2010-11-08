CREATE VIEW [Production].[vProductAndDescription] 
WITH SCHEMABINDING 
AS 
SELECT 
p.[ProductID] 
,p.[Name] 
,pm.[Name] AS [ProductModel] 
,pmx.[CultureID] 
,pd.[Description] 
FROM [Production].[Product] p 
INNER JOIN [Production].[ProductModel] pm 
ON p.[ProductModelID] = pm.[ProductModelID] 
INNER JOIN [Production].[ProductModelProductDescriptionCulture] pmx 
ON pm.[ProductModelID] = pmx.[ProductModelID] 
INNER JOIN [Production].[ProductDescription] pd 
ON pmx.[ProductDescriptionID] = pd.[ProductDescriptionID];

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product names and descriptions. Product descriptions are provided in multiple languages.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'VIEW', @level1name = N'vProductAndDescription';

