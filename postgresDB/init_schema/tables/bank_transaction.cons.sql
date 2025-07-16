ALTER TABLE bank_transaction
ADD CONSTRAINT bank_transaction__account_no__fk FOREIGN KEY (account_no) REFERENCES account (account_no);
ALTER TABLE bank_transaction
ADD CONSTRAINT bank_transaction__sending_account_no__fk FOREIGN KEY (sending_account_no) REFERENCES account (account_no);
ALTER TABLE bank_transaction
ADD CONSTRAINT bank_transaction__receiving_account_no__fk FOREIGN KEY (receiving_account_no) REFERENCES account (account_no);