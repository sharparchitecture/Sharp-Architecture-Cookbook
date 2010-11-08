ALTER TABLE [Production].[TransactionHistory]
    ADD CONSTRAINT [DF_TransactionHistory_ReferenceOrderLineID] DEFAULT ((0)) FOR [ReferenceOrderLineID];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistory', @level2type = N'CONSTRAINT', @level2name = N'DF_TransactionHistory_ReferenceOrderLineID';

