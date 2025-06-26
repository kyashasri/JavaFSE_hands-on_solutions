CREATE TABLE customer_loans (
    customer_id     NUMBER PRIMARY KEY,
    customer_name   VARCHAR2(100),
    age             NUMBER,
    loan_amount     NUMBER(12, 2),
    interest_rate   NUMBER(4,2) 
);
INSERT INTO customer_loans VALUES (1, 'Ravi', 45, 500000, 8.5);
INSERT INTO customer_loans VALUES (2, 'Sita', 63, 300000, 9.0);
INSERT INTO customer_loans VALUES (3, 'Arun', 70, 250000, 8.0);
INSERT INTO customer_loans VALUES (4, 'Meena', 35, 400000, 8.75);


DECLARE
    new_rate NUMBER(5,2);
BEGIN
   FOR rec IN (SELECT customer_id, customer_name, age, interest_rate FROM customer_loans WHERE age > 60) 
   LOOP
      new_rate := rec.interest_rate - (rec.interest_rate * 0.01);

      UPDATE customer_loans
      SET interest_rate = new_rate
      WHERE customer_id = rec.customer_id;

      DBMS_OUTPUT.PUT_LINE('Name: ' || rec.customer_name || ', Age: ' || rec.age || ', New Interest Rate: ' || new_rate);
   END LOOP;
END;
/
select * from customer_loans;

