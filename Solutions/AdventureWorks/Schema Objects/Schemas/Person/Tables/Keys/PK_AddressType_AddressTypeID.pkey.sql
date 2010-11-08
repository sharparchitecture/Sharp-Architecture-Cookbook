ALTER TABLE [Person].[AddressType]
    ADD CONSTRAINT [PK_AddressType_AddressTypeID] PRIMARY KEY CLUSTERED ([AddressTypeID] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'AddressType', @level2type = N'CONSTRAINT', @level2name = N'PK_AddressType_AddressTypeID';

