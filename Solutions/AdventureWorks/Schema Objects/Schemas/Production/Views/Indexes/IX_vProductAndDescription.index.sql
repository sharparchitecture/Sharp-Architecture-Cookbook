CREATE UNIQUE CLUSTERED INDEX [IX_vProductAndDescription]
    ON [Production].[vProductAndDescription]([CultureID] ASC, [ProductID] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF, ONLINE = OFF, MAXDOP = 0)
    ON [PRIMARY];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index on the view vProductAndDescription.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'VIEW', @level1name = N'vProductAndDescription', @level2type = N'INDEX', @level2name = N'IX_vProductAndDescription';

