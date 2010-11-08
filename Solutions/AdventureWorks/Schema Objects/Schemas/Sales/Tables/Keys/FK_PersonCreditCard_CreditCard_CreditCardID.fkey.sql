ALTER TABLE [Sales].[PersonCreditCard]
    ADD CONSTRAINT [FK_PersonCreditCard_CreditCard_CreditCardID] FOREIGN KEY ([CreditCardID]) REFERENCES [Sales].[CreditCard] ([CreditCardID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing CreditCard.CreditCardID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'PersonCreditCard', @level2type = N'CONSTRAINT', @level2name = N'FK_PersonCreditCard_CreditCard_CreditCardID';

