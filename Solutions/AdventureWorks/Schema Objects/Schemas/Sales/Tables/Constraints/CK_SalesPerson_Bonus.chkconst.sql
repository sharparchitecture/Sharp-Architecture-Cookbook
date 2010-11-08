ALTER TABLE [Sales].[SalesPerson]
    ADD CONSTRAINT [CK_SalesPerson_Bonus] CHECK ([Bonus]>=(0.00));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Bonus] >= (0.00)', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesPerson_Bonus';

