CREATE TABLE IF NOT EXISTS account (
    account_no serial PRIMARY KEY,
    account_name varchar(100) NOT NULL
);
/*Comments*/
COMMENT ON TABLE account IS 'Table to represent financial accounts.';
COMMENT ON COLUMN account.account_no IS 'unique number for financial account.';
COMMENT ON COLUMN account.account_name IS 'displayed name for the account';