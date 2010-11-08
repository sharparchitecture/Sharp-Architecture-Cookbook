ALTER TABLE [HumanResources].[EmployeePayHistory]
    ADD CONSTRAINT [CK_EmployeePayHistory_Rate] CHECK ([Rate]>=(6.50) AND [Rate]<=(200.00));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Rate] >= (6.50) AND [Rate] <= (200.00)', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_EmployeePayHistory_Rate';

