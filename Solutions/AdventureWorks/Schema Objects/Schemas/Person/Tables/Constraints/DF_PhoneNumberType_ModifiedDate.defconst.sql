ALTER TABLE [Person].[PhoneNumberType]
    ADD CONSTRAINT [DF_PhoneNumberType_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PhoneNumberType', @level2type = N'CONSTRAINT', @level2name = N'DF_PhoneNumberType_ModifiedDate';

