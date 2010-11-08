ALTER TABLE [Production].[Location]
    ADD CONSTRAINT [CK_Location_CostRate] CHECK ([CostRate]>=(0.00));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [CostRate] >= (0.00)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'CONSTRAINT', @level2name = N'CK_Location_CostRate';

