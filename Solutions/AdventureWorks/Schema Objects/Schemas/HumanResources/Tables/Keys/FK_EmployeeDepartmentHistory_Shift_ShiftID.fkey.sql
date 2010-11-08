ALTER TABLE [HumanResources].[EmployeeDepartmentHistory]
    ADD CONSTRAINT [FK_EmployeeDepartmentHistory_Shift_ShiftID] FOREIGN KEY ([ShiftID]) REFERENCES [HumanResources].[Shift] ([ShiftID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Shift.ShiftID', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'CONSTRAINT', @level2name = N'FK_EmployeeDepartmentHistory_Shift_ShiftID';

