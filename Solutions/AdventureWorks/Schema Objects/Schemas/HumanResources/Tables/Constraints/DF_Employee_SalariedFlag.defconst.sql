ALTER TABLE [HumanResources].[Employee]
    ADD CONSTRAINT [DF_Employee_SalariedFlag] DEFAULT ((1)) FOR [SalariedFlag];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1 (TRUE)', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'DF_Employee_SalariedFlag';

