ALTER TABLE [Production].[ProductCostHistory]
    ADD CONSTRAINT [CK_ProductCostHistory_StandardCost] CHECK ([StandardCost]>=(0.00));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [StandardCost] >= (0.00)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductCostHistory_StandardCost';

