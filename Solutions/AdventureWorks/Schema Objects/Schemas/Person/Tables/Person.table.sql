CREATE TABLE [Person].[Person] (
    [BusinessEntityID]      INT                                                           NOT NULL,
    [PersonType]            NCHAR (2)                                                     NOT NULL,
    [NameStyle]             [dbo].[NameStyle]                                             NOT NULL,
    [Title]                 NVARCHAR (8)                                                  NULL,
    [FirstName]             [dbo].[Name]                                                  NOT NULL,
    [MiddleName]            [dbo].[Name]                                                  NULL,
    [LastName]              [dbo].[Name]                                                  NOT NULL,
    [Suffix]                NVARCHAR (10)                                                 NULL,
    [EmailPromotion]        INT                                                           NOT NULL,
    [AdditionalContactInfo] XML(CONTENT [Person].[AdditionalContactInfoSchemaCollection]) NULL,
    [Demographics]          XML(CONTENT [Person].[IndividualSurveySchemaCollection])      NULL,
    [rowguid]               UNIQUEIDENTIFIER                                              ROWGUIDCOL NOT NULL,
    [ModifiedDate]          DATETIME                                                      NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Human beings involved with AdventureWorks: employees, customer contacts, and vendor contacts.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Person records.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary type of person: SC = Store Contact, IN = Individual (retail) customer, SP = Sales person, EM = Employee (non-sales), VC = Vendor contact, GC = General contact', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'PersonType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 = The data in FirstName and LastName are stored in western style (first name, last name) order.  1 = Eastern style (last name, first name) order.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'NameStyle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A courtesy title. For example, Mr. or Ms.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'First name of the person.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Middle name or middle initial of the person.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Last name of the person.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Surname suffix. For example, Sr. or Jr.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'Suffix';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 = Contact does not wish to receive e-mail promotions, 1 = Contact does wish to receive e-mail promotions from AdventureWorks, 2 = Contact does wish to receive e-mail promotions from AdventureWorks and selected partners.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'EmailPromotion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Additional contact information about the person stored in xml format.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'AdditionalContactInfo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Personal information such as hobbies, and income collected from online shoppers. Used for sales analysis.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'Demographics';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

