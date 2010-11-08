ALTER TABLE [Production].[ProductInventory]
    ADD CONSTRAINT [CK_ProductInventory_Bin] CHECK ([Bin]>=(0) AND [Bin]<=(100));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Bin] BETWEEN (0) AND (100)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductInventory_Bin';

