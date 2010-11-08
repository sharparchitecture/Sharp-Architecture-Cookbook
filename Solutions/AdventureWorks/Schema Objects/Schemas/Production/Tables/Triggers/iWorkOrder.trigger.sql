CREATE TRIGGER [Production].[iWorkOrder] ON [Production].[WorkOrder] 
AFTER INSERT AS 
BEGIN
DECLARE @Count int;
SET @Count = @@ROWCOUNT;
IF @Count = 0 
RETURN;
SET NOCOUNT ON;
BEGIN TRY
INSERT INTO [Production].[TransactionHistory](
[ProductID]
,[ReferenceOrderID]
,[TransactionType]
,[TransactionDate]
,[Quantity]
,[ActualCost])
SELECT 
inserted.[ProductID]
,inserted.[WorkOrderID]
,'W'
,GETDATE()
,inserted.[OrderQty]
,0
FROM inserted;
END TRY
BEGIN CATCH
EXECUTE [dbo].[uspPrintError];
IF @@TRANCOUNT > 0
BEGIN
ROLLBACK TRANSACTION;
END
EXECUTE [dbo].[uspLogError];
END CATCH;
END;

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'AFTER INSERT trigger that inserts a row in the TransactionHistory table.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'TRIGGER', @level2name = N'iWorkOrder';

