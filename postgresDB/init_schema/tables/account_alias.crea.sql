CREATE TABLE IF NOT EXISTS account_alias (
    account_no integer NOT NULL,
    alias text NOT NULL,
    PRIMARY KEY (account_no, alias)
);
/*Comments*/
COMMENT ON TABLE account_alias IS 'Table to map third party account names to BudgetMate accounts.';
COMMENT ON COLUMN account_alias.account_no IS 'Foreign key to account.';
COMMENT ON COLUMN account_alias.account_no IS 'Alias for a account. Used when mapping third party account names to BudgetMate account names.';