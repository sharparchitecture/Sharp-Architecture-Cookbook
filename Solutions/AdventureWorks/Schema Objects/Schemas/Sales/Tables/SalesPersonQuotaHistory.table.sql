CREATE TABLE [Sales].[SalesPersonQuotaHistory] (
    [BusinessEntityID] INT              NOT NULL,
    [QuotaDate]        DATETIME         NOT NULL,
    [SalesQuota]       MONEY            NOT NULL,
    [rowguid]          UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [ModifiedDate]     DATETIME         NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Sales performance tracking.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Sales person identification number. Foreign key to SalesPerson.BusinessEntityID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Sales quota date.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'COLUMN', @level2name = N'QuotaDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Sales quota amount.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'COLUMN', @level2name = N'SalesQuota';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

