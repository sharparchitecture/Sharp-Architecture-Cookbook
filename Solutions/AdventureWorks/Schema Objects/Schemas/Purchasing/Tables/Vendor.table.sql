CREATE TABLE [Purchasing].[Vendor] (
    [BusinessEntityID]        INT                   NOT NULL,
    [AccountNumber]           [dbo].[AccountNumber] NOT NULL,
    [Name]                    [dbo].[Name]          NOT NULL,
    [CreditRating]            TINYINT               NOT NULL,
    [PreferredVendorStatus]   [dbo].[Flag]          NOT NULL,
    [ActiveFlag]              [dbo].[Flag]          NOT NULL,
    [PurchasingWebServiceURL] NVARCHAR (1024)       NULL,
    [ModifiedDate]            DATETIME              NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Companies from whom Adventure Works Cycles purchases parts or other goods.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Vendor records.  Foreign key to BusinessEntity.BusinessEntityID', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Vendor account (identification) number.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Company name.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'1 = Superior, 2 = Excellent, 3 = Above average, 4 = Average, 5 = Below average', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'COLUMN', @level2name = N'CreditRating';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 = Do not use if another vendor is available. 1 = Preferred over other vendors supplying the same product.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'COLUMN', @level2name = N'PreferredVendorStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 = Vendor no longer used. 1 = Vendor is actively used.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'COLUMN', @level2name = N'ActiveFlag';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Vendor URL.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'COLUMN', @level2name = N'PurchasingWebServiceURL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

