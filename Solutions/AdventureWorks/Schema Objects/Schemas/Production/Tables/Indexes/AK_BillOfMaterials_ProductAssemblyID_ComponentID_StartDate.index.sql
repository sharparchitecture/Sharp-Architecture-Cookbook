CREATE UNIQUE CLUSTERED INDEX [AK_BillOfMaterials_ProductAssemblyID_ComponentID_StartDate]
    ON [Production].[BillOfMaterials]([ProductAssemblyID] ASC, [ComponentID] ASC, [StartDate] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF, ONLINE = OFF, MAXDOP = 0);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'BillOfMaterials', @level2type = N'INDEX', @level2name = N'AK_BillOfMaterials_ProductAssemblyID_ComponentID_StartDate';

