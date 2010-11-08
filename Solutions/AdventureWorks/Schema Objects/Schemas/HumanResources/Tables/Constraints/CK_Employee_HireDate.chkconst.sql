ALTER TABLE [HumanResources].[Employee]
    ADD CONSTRAINT [CK_Employee_HireDate] CHECK ([HireDate]>='1996-07-01' AND [HireDate]<=dateadd(day,(1),getdate()));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [HireDate] >= ''1996-07-01'' AND [HireDate] <= dateadd(day,(1),GETDATE())', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'CK_Employee_HireDate';

