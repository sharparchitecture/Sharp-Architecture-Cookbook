CREATE TABLE [Sales].[SpecialOffer] (
    [SpecialOfferID] INT              IDENTITY (1, 1) NOT NULL,
    [Description]    NVARCHAR (255)   NOT NULL,
    [DiscountPct]    SMALLMONEY       NOT NULL,
    [Type]           NVARCHAR (50)    NOT NULL,
    [Category]       NVARCHAR (50)    NOT NULL,
    [StartDate]      DATETIME         NOT NULL,
    [EndDate]        DATETIME         NOT NULL,
    [MinQty]         INT              NOT NULL,
    [MaxQty]         INT              NULL,
    [rowguid]        UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [ModifiedDate]   DATETIME         NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Sale discounts lookup table.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for SpecialOffer records.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'SpecialOfferID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Discount description.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Discount precentage.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'DiscountPct';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Discount type category.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Group the discount applies to such as Reseller or Customer.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'Category';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Discount start date.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Discount end date.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Minimum discount percent allowed.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'MinQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Maximum discount percent allowed.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'MaxQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

