ALTER TABLE [Production].[TransactionHistory]
    ADD CONSTRAINT [CK_TransactionHistory_TransactionType] CHECK (upper([TransactionType])='P' OR upper([TransactionType])='S' OR upper([TransactionType])='W');


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [TransactionType]=''p'' OR [TransactionType]=''s'' OR [TransactionType]=''w'' OR [TransactionType]=''P'' OR [TransactionType]=''S'' OR [TransactionType]=''W'')', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_TransactionHistory_TransactionType';

