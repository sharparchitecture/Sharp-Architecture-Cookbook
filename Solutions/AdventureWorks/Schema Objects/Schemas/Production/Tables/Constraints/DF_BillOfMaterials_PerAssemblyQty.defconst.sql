ALTER TABLE [Production].[BillOfMaterials]
    ADD CONSTRAINT [DF_BillOfMaterials_PerAssemblyQty] DEFAULT ((1.00)) FOR [PerAssemblyQty];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1.0', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'CONSTRAINT', @level2name = N'DF_BillOfMaterials_PerAssemblyQty';

