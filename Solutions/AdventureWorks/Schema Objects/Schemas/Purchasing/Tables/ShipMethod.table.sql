CREATE TABLE [Purchasing].[ShipMethod] (
    [ShipMethodID] INT              IDENTITY (1, 1) NOT NULL,
    [Name]         [dbo].[Name]     NOT NULL,
    [ShipBase]     MONEY            NOT NULL,
    [ShipRate]     MONEY            NOT NULL,
    [rowguid]      UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [ModifiedDate] DATETIME         NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Shipping company lookup table.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ShipMethod records.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'COLUMN', @level2name = N'ShipMethodID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Shipping company name.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Minimum shipping charge.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'COLUMN', @level2name = N'ShipBase';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Shipping charge per pound.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'COLUMN', @level2name = N'ShipRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

