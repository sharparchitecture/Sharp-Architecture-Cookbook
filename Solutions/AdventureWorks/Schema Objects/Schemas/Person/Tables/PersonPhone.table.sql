CREATE TABLE [Person].[PersonPhone] (
    [BusinessEntityID]  INT           NOT NULL,
    [PhoneNumber]       [dbo].[Phone] NOT NULL,
    [PhoneNumberTypeID] INT           NOT NULL,
    [ModifiedDate]      DATETIME      NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Telephone number and type of a person.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PersonPhone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Business entity identification number. Foreign key to Person.BusinessEntityID.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PersonPhone', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Telephone number identification number.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PersonPhone', @level2type = N'COLUMN', @level2name = N'PhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Kind of phone number. Foreign key to PhoneNumberType.PhoneNumberTypeID.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PersonPhone', @level2type = N'COLUMN', @level2name = N'PhoneNumberTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PersonPhone', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

