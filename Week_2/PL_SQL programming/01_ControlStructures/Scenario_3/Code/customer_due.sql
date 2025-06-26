CREATE TABLE customer_due (
    customer_id     NUMBER PRIMARY KEY,
    customer_name   VARCHAR2(100),
    loan_amount     NUMBER(12, 2),
    due_date        DATE
);

INSERT INTO customer_due VALUES (1, 'Ravi', 500000, TO_DATE('10-07-2025', 'DD-MM-YYYY'));  -- due(16 days)
INSERT INTO customer_due VALUES (2, 'Sita', 300000, TO_DATE('05-07-2025', 'DD-MM-YYYY'));  -- due(11 days)
INSERT INTO customer_due VALUES (3, 'Arun', 250000, TO_DATE('15-08-2025', 'DD-MM-YYYY'));  -- due(30+ days)
INSERT INTO customer_due VALUES (4, 'Meena', 400000, TO_DATE('01-07-2025', 'DD-MM-YYYY')); -- due(7 days)

BEGIN
   FOR rec IN (SELECT customer_name, loan_amount, due_date FROM customer_due WHERE due_date BETWEEN SYSDATE AND SYSDATE + 30) 
   LOOP
      DBMS_OUTPUT.PUT_LINE(
         'Reminder: ' || rec.customer_name || ', your loan of $' || rec.loan_amount || ' is due on ' || TO_CHAR(rec.due_date, 'DD-MON-YYYY') || 
         'Please repay on time.'
      );
   END LOOP;
END;
/
select * from customer_due;
