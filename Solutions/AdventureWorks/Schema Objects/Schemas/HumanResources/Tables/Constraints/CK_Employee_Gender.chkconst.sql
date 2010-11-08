ALTER TABLE [HumanResources].[Employee]
    ADD CONSTRAINT [CK_Employee_Gender] CHECK (upper([Gender])='F' OR upper([Gender])='M');


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Gender]=''f'' OR [Gender]=''m'' OR [Gender]=''F'' OR [Gender]=''M''', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'CK_Employee_Gender';

