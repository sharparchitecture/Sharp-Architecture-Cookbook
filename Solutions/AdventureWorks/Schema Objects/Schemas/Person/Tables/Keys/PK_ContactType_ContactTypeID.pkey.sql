ALTER TABLE [Person].[ContactType]
    ADD CONSTRAINT [PK_ContactType_ContactTypeID] PRIMARY KEY CLUSTERED ([ContactTypeID] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'ContactType', @level2type = N'CONSTRAINT', @level2name = N'PK_ContactType_ContactTypeID';

