ALTER TABLE [Sales].[SalesOrderHeader]
    ADD CONSTRAINT [CK_SalesOrderHeader_Status] CHECK ([Status]>=(0) AND [Status]<=(8));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Status] BETWEEN (0) AND (8)', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesOrderHeader_Status';

