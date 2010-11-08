CREATE TABLE [Person].[CountryRegion] (
    [CountryRegionCode] NVARCHAR (3) NOT NULL,
    [Name]              [dbo].[Name] NOT NULL,
    [ModifiedDate]      DATETIME     NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lookup table containing the ISO standard codes for countries and regions.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'CountryRegion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ISO standard code for countries and regions.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'CountryRegion', @level2type = N'COLUMN', @level2name = N'CountryRegionCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Country or region name.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'CountryRegion', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'CountryRegion', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

