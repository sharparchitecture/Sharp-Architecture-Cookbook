ALTER TABLE [Production].[TransactionHistory]
    ADD CONSTRAINT [FK_TransactionHistory_Product_ProductID] FOREIGN KEY ([ProductID]) REFERENCES [Production].[Product] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Product.ProductID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'CONSTRAINT', @level2name = N'FK_TransactionHistory_Product_ProductID';

