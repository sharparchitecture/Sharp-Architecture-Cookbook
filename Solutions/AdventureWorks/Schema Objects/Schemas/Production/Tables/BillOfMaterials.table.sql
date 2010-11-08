CREATE TABLE [Production].[BillOfMaterials] (
    [BillOfMaterialsID] INT            IDENTITY (1, 1) NOT NULL,
    [ProductAssemblyID] INT            NULL,
    [ComponentID]       INT            NOT NULL,
    [StartDate]         DATETIME       NOT NULL,
    [EndDate]           DATETIME       NULL,
    [UnitMeasureCode]   NCHAR (3)      NOT NULL,
    [BOMLevel]          SMALLINT       NOT NULL,
    [PerAssemblyQty]    DECIMAL (8, 2) NOT NULL,
    [ModifiedDate]      DATETIME       NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Items required to make bicycles and bicycle subassemblies. It identifies the heirarchical relationship between a parent product and its components.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for BillOfMaterials records.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'BillOfMaterialsID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Parent product identification number. Foreign key to Product.ProductID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'ProductAssemblyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Component identification number. Foreign key to Product.ProductID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'ComponentID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the component started being used in the assembly item.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the component stopped being used in the assembly item.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Standard code identifying the unit of measure for the quantity.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'UnitMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the depth the component is from its parent (AssemblyID).', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'BOMLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Quantity of the component needed to create the assembly.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'PerAssemblyQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

