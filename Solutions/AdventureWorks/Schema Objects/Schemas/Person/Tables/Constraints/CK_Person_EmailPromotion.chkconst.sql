ALTER TABLE [Person].[Person]
    ADD CONSTRAINT [CK_Person_EmailPromotion] CHECK ([EmailPromotion]>=(0) AND [EmailPromotion]<=(2));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [EmailPromotion] >= (0) AND [EmailPromotion] <= (2)', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'CONSTRAINT', @level2name = N'CK_Person_EmailPromotion';

