ALTER TABLE [HumanResources].[EmployeeDepartmentHistory]
    ADD CONSTRAINT [CK_EmployeeDepartmentHistory_EndDate] CHECK ([EndDate]>=[StartDate] OR [EndDate] IS NULL);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [EndDate] >= [StartDate] OR [EndDate] IS NUL', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_EmployeeDepartmentHistory_EndDate';

