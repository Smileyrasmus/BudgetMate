CREATE TABLE IF NOT EXISTS bank_transaction (
    bank_transaction_no serial PRIMARY KEY,
    account_no integer NOT NULL,
    sending_account_no integer NOT NULL,
    receiving_account_no integer NOT NULL,
    amount my_money NOT NULL,
    saldo my_money NOT NULL,
    valuta varchar(5) NOT NULL,
    text1 text,
    text2 text,
    text3 text,
    day_sort_order smallint NOT NULL
);
/*Comments*/
COMMENT ON TABLE bank_transaction IS 'Table containing actual financial transactions that has been made.';
COMMENT ON COLUMN bank_transaction.bank_transaction_no IS 'Unique number for bank_transaction.';
COMMENT ON COLUMN bank_transaction.account_no IS 'The account this transaction belongs to. Foreign key to account table.';
COMMENT ON COLUMN bank_transaction.sending_account_no IS 'The account sending money. Foreign key to account table.';
COMMENT ON COLUMN bank_transaction.receiving_account_no IS 'The account receiving money. Foreign key to account table.';
COMMENT ON COLUMN bank_transaction.amount IS 'The amount of money transferred.';
COMMENT ON COLUMN bank_transaction.saldo IS 'The current saldo on the account after the transaction.';
COMMENT ON COLUMN bank_transaction.valuta IS 'The valuta used for this transaction.';
COMMENT ON COLUMN bank_transaction.text1 IS 'A field to hold describing text of the transaction';
COMMENT ON COLUMN bank_transaction.text2 IS 'A field to hold describing text of the transaction';
COMMENT ON COLUMN bank_transaction.text3 IS 'A field to hold describing text of the transaction';