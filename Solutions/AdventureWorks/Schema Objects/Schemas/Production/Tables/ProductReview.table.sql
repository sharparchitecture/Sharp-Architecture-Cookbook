CREATE TABLE [Production].[ProductReview] (
    [ProductReviewID] INT             IDENTITY (1, 1) NOT NULL,
    [ProductID]       INT             NOT NULL,
    [ReviewerName]    [dbo].[Name]    NOT NULL,
    [ReviewDate]      DATETIME        NOT NULL,
    [EmailAddress]    NVARCHAR (50)   NOT NULL,
    [Rating]          INT             NOT NULL,
    [Comments]        NVARCHAR (3850) NULL,
    [ModifiedDate]    DATETIME        NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer reviews of products they have purchased.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ProductReview records.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'COLUMN', @level2name = N'ProductReviewID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product identification number. Foreign key to Product.ProductID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'COLUMN', @level2name = N'ProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the reviewer.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'COLUMN', @level2name = N'ReviewerName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date review was submitted.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'COLUMN', @level2name = N'ReviewDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Reviewer''s e-mail address.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'COLUMN', @level2name = N'EmailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product rating given by the reviewer. Scale is 1 to 5 with 5 as the highest rating.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'COLUMN', @level2name = N'Rating';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Reviewer''s comments', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'COLUMN', @level2name = N'Comments';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductReview', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

