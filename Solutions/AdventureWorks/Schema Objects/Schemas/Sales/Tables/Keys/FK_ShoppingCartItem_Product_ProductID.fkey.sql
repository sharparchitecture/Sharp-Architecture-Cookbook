ALTER TABLE [Sales].[ShoppingCartItem]
    ADD CONSTRAINT [FK_ShoppingCartItem_Product_ProductID] FOREIGN KEY ([ProductID]) REFERENCES [Production].[Product] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Product.ProductID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'CONSTRAINT', @level2name = N'FK_ShoppingCartItem_Product_ProductID';

