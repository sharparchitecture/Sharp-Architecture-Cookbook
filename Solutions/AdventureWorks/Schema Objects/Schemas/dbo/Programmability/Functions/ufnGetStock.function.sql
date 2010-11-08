CREATE FUNCTION [dbo].[ufnGetStock](@ProductID [int])
RETURNS [int] 
AS 
BEGIN
DECLARE @ret int;

SELECT @ret = SUM(p.[Quantity]) 
FROM [Production].[ProductInventory] p 
WHERE p.[ProductID] = @ProductID 
AND p.[LocationID] = '6'; -- Only look at inventory in the misc storage

IF (@ret IS NULL) 
SET @ret = 0

RETURN @ret
END;

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Scalar function returning the quantity of inventory in LocationID 6 (Miscellaneous Storage)for a specified ProductID.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetStock';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Input parameter for the scalar function ufnGetStock. Enter a valid ProductID from the Production.ProductInventory table.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'ufnGetStock', @level2type = N'PARAMETER', @level2name = N'@ProductID';

