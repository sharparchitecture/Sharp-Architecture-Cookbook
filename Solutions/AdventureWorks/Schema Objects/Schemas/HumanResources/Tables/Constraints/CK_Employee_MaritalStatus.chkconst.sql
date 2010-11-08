ALTER TABLE [HumanResources].[Employee]
    ADD CONSTRAINT [CK_Employee_MaritalStatus] CHECK (upper([MaritalStatus])='S' OR upper([MaritalStatus])='M');


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [MaritalStatus]=''s'' OR [MaritalStatus]=''m'' OR [MaritalStatus]=''S'' OR [MaritalStatus]=''M''', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'CONSTRAINT', @level2name = N'CK_Employee_MaritalStatus';

