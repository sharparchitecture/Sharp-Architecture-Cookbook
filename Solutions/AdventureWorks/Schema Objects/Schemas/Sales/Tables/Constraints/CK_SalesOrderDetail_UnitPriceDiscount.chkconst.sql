ALTER TABLE [Sales].[SalesOrderDetail]
    ADD CONSTRAINT [CK_SalesOrderDetail_UnitPriceDiscount] CHECK ([UnitPriceDiscount]>=(0.00));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [UnitPriceDiscount] >= (0.00)', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesOrderDetail_UnitPriceDiscount';

