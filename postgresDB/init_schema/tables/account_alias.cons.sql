ALTER TABLE account_alias
ADD CONSTRAINT account_alias__alias__unique UNIQUE (alias);