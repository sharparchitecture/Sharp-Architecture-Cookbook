CREATE TRIGGER [Purchasing].[uPurchaseOrderHeader] ON [Purchasing].[PurchaseOrderHeader] 
AFTER UPDATE AS 
BEGIN
DECLARE @Count int;
SET @Count = @@ROWCOUNT;
IF @Count = 0 
RETURN;
SET NOCOUNT ON;
BEGIN TRY
IF NOT UPDATE([Status])
BEGIN
UPDATE [Purchasing].[PurchaseOrderHeader]
SET [Purchasing].[PurchaseOrderHeader].[RevisionNumber] = 
[Purchasing].[PurchaseOrderHeader].[RevisionNumber] + 1
WHERE [Purchasing].[PurchaseOrderHeader].[PurchaseOrderID] IN 
(SELECT inserted.[PurchaseOrderID] FROM inserted);
END;
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
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'AFTER UPDATE trigger that updates the RevisionNumber and ModifiedDate columns in the PurchaseOrderHeader table.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'TRIGGER', @level2name = N'uPurchaseOrderHeader';

