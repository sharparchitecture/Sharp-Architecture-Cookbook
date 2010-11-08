ALTER TABLE [HumanResources].[EmployeePayHistory]
    ADD CONSTRAINT [CK_EmployeePayHistory_PayFrequency] CHECK ([PayFrequency]=(2) OR [PayFrequency]=(1));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [PayFrequency]=(3) OR [PayFrequency]=(2) OR [PayFrequency]=(1)', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_EmployeePayHistory_PayFrequency';

