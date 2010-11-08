ALTER TABLE [Production].[ProductReview]
    ADD CONSTRAINT [DF_ProductReview_ReviewDate] DEFAULT (getdate()) FOR [ReviewDate];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductReview_ReviewDate';

