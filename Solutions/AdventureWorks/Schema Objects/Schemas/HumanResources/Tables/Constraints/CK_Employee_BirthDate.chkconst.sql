ALTER TABLE [HumanResources].[Employee]
    ADD CONSTRAINT [CK_Employee_BirthDate] CHECK ([BirthDate]>='1930-01-01' AND [BirthDate]<=dateadd(year,(-18),getdate()));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [BirthDate] >= ''1930-01-01'' AND [BirthDate] <= dateadd(year,(-18),GETDATE())', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'CK_Employee_BirthDate';

