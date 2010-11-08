ALTER TABLE [HumanResources].[EmployeeDepartmentHistory]
    ADD CONSTRAINT [FK_EmployeeDepartmentHistory_Department_DepartmentID] FOREIGN KEY ([DepartmentID]) REFERENCES [HumanResources].[Department] ([DepartmentID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Department.DepartmentID.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'CONSTRAINT', @level2name = N'FK_EmployeeDepartmentHistory_Department_DepartmentID';

