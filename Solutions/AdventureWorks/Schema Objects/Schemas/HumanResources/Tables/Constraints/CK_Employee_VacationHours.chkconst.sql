ALTER TABLE [HumanResources].[Employee]
    ADD CONSTRAINT [CK_Employee_VacationHours] CHECK ([VacationHours]>=(-40) AND [VacationHours]<=(240));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [VacationHours] >= (-40) AND [VacationHours] <= (240)', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'CK_Employee_VacationHours';

