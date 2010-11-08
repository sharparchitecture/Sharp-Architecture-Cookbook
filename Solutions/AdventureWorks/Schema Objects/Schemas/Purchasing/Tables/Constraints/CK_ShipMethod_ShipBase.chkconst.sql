ALTER TABLE [Purchasing].[ShipMethod]
    ADD CONSTRAINT [CK_ShipMethod_ShipBase] CHECK ([ShipBase]>(0.00));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ShipBase] > (0.00)', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ShipMethod', @level2type = N'CONSTRAINT', @level2name = N'CK_ShipMethod_ShipBase';

