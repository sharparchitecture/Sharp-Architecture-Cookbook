ALTER TABLE [Production].[ProductInventory]
    ADD CONSTRAINT [CK_ProductInventory_Shelf] CHECK ([Shelf] like '[A-Za-z]' OR [Shelf]='N/A');


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Shelf] like ''[A-Za-z]'' OR [Shelf]=''N/A''', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductInventory_Shelf';

