CREATE TABLE [Person].[StateProvince] (
    [StateProvinceID]         INT              IDENTITY (1, 1) NOT NULL,
    [StateProvinceCode]       NCHAR (3)        NOT NULL,
    [CountryRegionCode]       NVARCHAR (3)     NOT NULL,
    [IsOnlyStateProvinceFlag] [dbo].[Flag]     NOT NULL,
    [Name]                    [dbo].[Name]     NOT NULL,
    [TerritoryID]             INT              NOT NULL,
    [rowguid]                 UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [ModifiedDate]            DATETIME         NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'State and province lookup table.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for StateProvince records.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'COLUMN', @level2name = N'StateProvinceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ISO standard state or province code.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'COLUMN', @level2name = N'StateProvinceCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ISO standard country or region code. Foreign key to CountryRegion.CountryRegionCode.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'COLUMN', @level2name = N'CountryRegionCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 = StateProvinceCode exists. 1 = StateProvinceCode unavailable, using CountryRegionCode.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'COLUMN', @level2name = N'IsOnlyStateProvinceFlag';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'State or province description.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ID of the territory in which the state or province is located. Foreign key to SalesTerritory.SalesTerritoryID.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'COLUMN', @level2name = N'TerritoryID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

