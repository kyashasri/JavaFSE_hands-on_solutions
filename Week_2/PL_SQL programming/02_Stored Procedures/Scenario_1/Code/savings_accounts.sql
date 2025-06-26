
CREATE TABLE savings_accounts (
    account_id    NUMBER PRIMARY KEY,
    customer_name VARCHAR2(100),
    balance       NUMBER(12, 2)
);

INSERT INTO savings_accounts VALUES (1, 'Ram', 10000);
INSERT INTO savings_accounts VALUES (2, 'Srija', 15000);
INSERT INTO savings_accounts VALUES (3, 'Aruna', 20000);
INSERT INTO savings_accounts VALUES (4, 'Mehta', 5000);
COMMIT;


CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest IS
    interest_rate CONSTANT NUMBER := 0.01;  
BEGIN
    FOR rec IN (SELECT account_id, balance FROM savings_accounts) LOOP
        UPDATE savings_accounts
        SET balance = balance + (rec.balance * interest_rate)
        WHERE account_id = rec.account_id;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Monthly interest processed for all savings accounts.');
END;
/

BEGIN
   ProcessMonthlyInterest;
END;
/

SELECT * FROM savings_accounts;
