ALTER TABLE [Purchasing].[ShipMethod]
    ADD CONSTRAINT [DF_ShipMethod_ShipBase] DEFAULT ((0.00)) FOR [ShipBase];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'CONSTRAINT', @level2name = N'DF_ShipMethod_ShipBase';

