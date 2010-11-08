ALTER TABLE [Sales].[SalesOrderHeader]
    ADD CONSTRAINT [FK_SalesOrderHeader_Customer_CustomerID] FOREIGN KEY ([CustomerID]) REFERENCES [Sales].[Customer] ([CustomerID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Customer.CustomerID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesOrderHeader_Customer_CustomerID';

