CREATE TABLE bank_accounts (
    account_id    NUMBER PRIMARY KEY,
    customer_name VARCHAR2(100),
    balance       NUMBER(12, 2)
);

INSERT INTO bank_accounts VALUES (101, 'Ram', 10000);
INSERT INTO bank_accounts VALUES (102, 'Sita', 15000);
INSERT INTO bank_accounts VALUES (103, 'Arun', 20000);
INSERT INTO bank_accounts VALUES (104, 'Meena', 5000);
COMMIT;

CREATE OR REPLACE PROCEDURE TransferFunds (
    from_acc_id IN NUMBER,
    to_acc_id   IN NUMBER,
    amount      IN NUMBER
) IS
    from_balance bank_accounts.balance%TYPE;
BEGIN
    SELECT balance INTO from_balance
    FROM bank_accounts
    WHERE account_id = from_acc_id;

    IF from_balance < amount THEN
        RAISE_APPLICATION_ERROR(-20001, 'Insufficient balance in source account.');
    END IF;

    -
    UPDATE bank_accounts
    SET balance = balance - amount
    WHERE account_id = from_acc_id;

    
    UPDATE bank_accounts
    SET balance = balance + amount
    WHERE account_id = to_acc_id;

    DBMS_OUTPUT.PUT_LINE('Transfer of ₹' || amount || ' from Account ' || from_acc_id || ' to Account ' || to_acc_id || ' successful.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Account not found.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
BEGIN
    TransferFunds(101, 104, 3000);  
END;
/

SELECT * FROM bank_accounts;
