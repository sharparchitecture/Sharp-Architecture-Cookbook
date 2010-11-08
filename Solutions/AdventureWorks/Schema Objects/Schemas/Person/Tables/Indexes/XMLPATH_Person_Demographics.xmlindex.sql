CREATE XML INDEX [XMLPATH_Person_Demographics]
    ON [Person].[Person]([Demographics])
    USING XML INDEX [PXML_Person_Demographics] FOR PATH
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, MAXDOP = 0, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Secondary XML index for path.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'INDEX', @level2name = N'XMLPATH_Person_Demographics';

