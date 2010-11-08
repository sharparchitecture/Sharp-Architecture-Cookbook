ALTER TABLE [Production].[ProductReview]
    ADD CONSTRAINT [CK_ProductReview_Rating] CHECK ([Rating]>=(1) AND [Rating]<=(5));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Rating] BETWEEN (1) AND (5)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductReview_Rating';

