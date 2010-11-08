ALTER TABLE [Sales].[ShoppingCartItem]
    ADD CONSTRAINT [CK_ShoppingCartItem_Quantity] CHECK ([Quantity]>=(1));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Quantity] >= (1)', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'CONSTRAINT', @level2name = N'CK_ShoppingCartItem_Quantity';

