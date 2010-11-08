ALTER TABLE [Sales].[SalesOrderDetail]
    ADD CONSTRAINT [DF_SalesOrderDetail_UnitPriceDiscount] DEFAULT ((0.0)) FOR [UnitPriceDiscount];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesOrderDetail_UnitPriceDiscount';

