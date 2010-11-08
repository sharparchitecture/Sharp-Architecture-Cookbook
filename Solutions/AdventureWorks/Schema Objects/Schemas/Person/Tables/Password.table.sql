CREATE TABLE [Person].[Password] (
    [BusinessEntityID] INT              NOT NULL,
    [PasswordHash]     VARCHAR (128)    NOT NULL,
    [PasswordSalt]     VARCHAR (10)     NOT NULL,
    [rowguid]          UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [ModifiedDate]     DATETIME         NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'One way hashed authentication information', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Password';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Password for the e-mail account.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Password', @level2type = N'COLUMN', @level2name = N'PasswordHash';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Random value concatenated with the password string before the password is hashed.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Password', @level2type = N'COLUMN', @level2name = N'PasswordSalt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Password', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Password', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

