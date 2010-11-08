ALTER TABLE [Sales].[SalesOrderHeaderSalesReason]
    ADD CONSTRAINT [FK_SalesOrderHeaderSalesReason_SalesOrderHeader_SalesOrderID] FOREIGN KEY ([SalesOrderID]) REFERENCES [Sales].[SalesOrderHeader] ([SalesOrderID]) ON DELETE CASCADE ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SalesOrderHeader.SalesOrderID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeaderSalesReason', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesOrderHeaderSalesReason_SalesOrderHeader_SalesOrderID';

