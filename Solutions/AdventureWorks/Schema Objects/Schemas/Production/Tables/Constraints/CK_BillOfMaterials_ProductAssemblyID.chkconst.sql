ALTER TABLE [Production].[BillOfMaterials]
    ADD CONSTRAINT [CK_BillOfMaterials_ProductAssemblyID] CHECK ([ProductAssemblyID]<>[ComponentID]);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ProductAssemblyID] <> [ComponentID]', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'CONSTRAINT', @level2name = N'CK_BillOfMaterials_ProductAssemblyID';

