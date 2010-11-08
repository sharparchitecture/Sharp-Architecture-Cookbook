ALTER TABLE [Person].[Person]
    ADD CONSTRAINT [CK_Person_PersonType] CHECK ([PersonType] IS NULL OR (upper([PersonType])='GC' OR upper([PersonType])='SP' OR upper([PersonType])='EM' OR upper([PersonType])='IN' OR upper([PersonType])='VC' OR upper([PersonType])='SC'));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [PersonType] is one of SC, VC, IN, EM or SP.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'CONSTRAINT', @level2name = N'CK_Person_PersonType';

