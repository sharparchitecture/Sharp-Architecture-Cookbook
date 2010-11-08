ALTER TABLE [Purchasing].[ShipMethod]
    ADD CONSTRAINT [DF_ShipMethod_rowguid] DEFAULT (newid()) FOR [rowguid];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'CONSTRAINT', @level2name = N'DF_ShipMethod_rowguid';

