CREATE TRIGGER [Purchasing].[dVendor] ON [Purchasing].[Vendor] 
INSTEAD OF DELETE NOT FOR REPLICATION AS 
BEGIN
DECLARE @Count int;
SET @Count = @@ROWCOUNT;
IF @Count = 0 
RETURN;
SET NOCOUNT ON;
BEGIN TRY
DECLARE @DeleteCount int;
SELECT @DeleteCount = COUNT(*) FROM deleted;
IF @DeleteCount > 0 
BEGIN
RAISERROR
(N'Vendors cannot be deleted. They can only be marked as not active.', -- Message
10, -- Severity.
1); -- State.
IF @@TRANCOUNT > 0
BEGIN
ROLLBACK TRANSACTION;
END
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
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'INSTEAD OF DELETE trigger which keeps Vendors from being deleted.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'TRIGGER', @level2name = N'dVendor';

