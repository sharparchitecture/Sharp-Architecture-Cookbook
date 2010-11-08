ALTER TABLE [Production].[ProductDocument]
    ADD CONSTRAINT [FK_ProductDocument_Document_DocumentNode] FOREIGN KEY ([DocumentNode]) REFERENCES [Production].[Document] ([DocumentNode]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Document.DocumentNode.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDocument', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductDocument_Document_DocumentNode';

