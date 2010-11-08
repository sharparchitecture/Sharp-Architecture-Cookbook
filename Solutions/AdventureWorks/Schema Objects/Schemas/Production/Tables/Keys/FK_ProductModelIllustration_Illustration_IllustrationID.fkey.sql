ALTER TABLE [Production].[ProductModelIllustration]
    ADD CONSTRAINT [FK_ProductModelIllustration_Illustration_IllustrationID] FOREIGN KEY ([IllustrationID]) REFERENCES [Production].[Illustration] ([IllustrationID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Illustration.IllustrationID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelIllustration', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductModelIllustration_Illustration_IllustrationID';

