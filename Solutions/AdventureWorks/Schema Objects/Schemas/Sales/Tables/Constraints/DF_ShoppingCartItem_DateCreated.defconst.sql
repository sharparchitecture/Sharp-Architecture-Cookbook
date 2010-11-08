ALTER TABLE [Sales].[ShoppingCartItem]
    ADD CONSTRAINT [DF_ShoppingCartItem_DateCreated] DEFAULT (getdate()) FOR [DateCreated];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'CONSTRAINT', @level2name = N'DF_ShoppingCartItem_DateCreated';

