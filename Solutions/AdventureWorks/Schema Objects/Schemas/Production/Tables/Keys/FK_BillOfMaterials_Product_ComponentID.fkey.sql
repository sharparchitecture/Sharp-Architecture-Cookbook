ALTER TABLE [Production].[BillOfMaterials]
    ADD CONSTRAINT [FK_BillOfMaterials_Product_ComponentID] FOREIGN KEY ([ComponentID]) REFERENCES [Production].[Product] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Product.ComponentID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'CONSTRAINT', @level2name = N'FK_BillOfMaterials_Product_ComponentID';

