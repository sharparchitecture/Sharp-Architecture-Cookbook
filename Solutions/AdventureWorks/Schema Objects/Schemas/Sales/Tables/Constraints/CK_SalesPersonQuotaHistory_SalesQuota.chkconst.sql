ALTER TABLE [Sales].[SalesPersonQuotaHistory]
    ADD CONSTRAINT [CK_SalesPersonQuotaHistory_SalesQuota] CHECK ([SalesQuota]>(0.00));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SalesQuota] > (0.00)', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesPersonQuotaHistory_SalesQuota';

