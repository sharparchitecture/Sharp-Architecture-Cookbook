ALTER TABLE [Production].[BillOfMaterials]
    ADD CONSTRAINT [CK_BillOfMaterials_BOMLevel] CHECK ([ProductAssemblyID] IS NULL AND [BOMLevel]=(0) AND [PerAssemblyQty]=(1.00) OR [ProductAssemblyID] IS NOT NULL AND [BOMLevel]>=(1));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ProductAssemblyID] IS NULL AND [BOMLevel] = (0) AND [PerAssemblyQty] = (1) OR [ProductAssemblyID] IS NOT NULL AND [BOMLevel] >= (1)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'CONSTRAINT', @level2name = N'CK_BillOfMaterials_BOMLevel';

