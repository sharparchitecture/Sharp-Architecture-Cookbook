ALTER TABLE [Sales].[SalesOrderHeader]
    ADD CONSTRAINT [DF_SalesOrderHeader_OnlineOrderFlag] DEFAULT ((1)) FOR [OnlineOrderFlag];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1 (TRUE)', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesOrderHeader_OnlineOrderFlag';

