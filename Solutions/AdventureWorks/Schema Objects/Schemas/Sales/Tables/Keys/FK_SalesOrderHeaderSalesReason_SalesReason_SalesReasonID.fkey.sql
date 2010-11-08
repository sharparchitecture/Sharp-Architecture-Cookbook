ALTER TABLE [Sales].[SalesOrderHeaderSalesReason]
    ADD CONSTRAINT [FK_SalesOrderHeaderSalesReason_SalesReason_SalesReasonID] FOREIGN KEY ([SalesReasonID]) REFERENCES [Sales].[SalesReason] ([SalesReasonID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SalesReason.SalesReasonID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeaderSalesReason', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesOrderHeaderSalesReason_SalesReason_SalesReasonID';

