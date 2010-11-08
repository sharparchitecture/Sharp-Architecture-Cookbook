ALTER TABLE [Sales].[SalesOrderHeader]
    ADD CONSTRAINT [CK_SalesOrderHeader_DueDate] CHECK ([DueDate]>=[OrderDate]);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [DueDate] >= [OrderDate]', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesOrderHeader_DueDate';

