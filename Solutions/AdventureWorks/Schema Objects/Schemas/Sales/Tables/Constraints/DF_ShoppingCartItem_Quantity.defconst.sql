ALTER TABLE [Sales].[ShoppingCartItem]
    ADD CONSTRAINT [DF_ShoppingCartItem_Quantity] DEFAULT ((1)) FOR [Quantity];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'CONSTRAINT', @level2name = N'DF_ShoppingCartItem_Quantity';

