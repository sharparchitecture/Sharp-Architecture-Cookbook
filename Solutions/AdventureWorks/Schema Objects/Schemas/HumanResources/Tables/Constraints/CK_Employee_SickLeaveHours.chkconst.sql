ALTER TABLE [HumanResources].[Employee]
    ADD CONSTRAINT [CK_Employee_SickLeaveHours] CHECK ([SickLeaveHours]>=(0) AND [SickLeaveHours]<=(120));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SickLeaveHours] >= (0) AND [SickLeaveHours] <= (120)', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'CK_Employee_SickLeaveHours';

