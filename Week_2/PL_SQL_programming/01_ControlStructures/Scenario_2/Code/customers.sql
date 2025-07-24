CREATE TABLE customers (
    customer_id     NUMBER PRIMARY KEY,
    customer_name   VARCHAR2(100),
    balance NUMBER(10),
     isVip CHAR(1) DEFAULT 'N'

);

INSERT INTO customers VALUES (1, 'Ravi', 8000,'N');
INSERT INTO customers VALUES (2, 'Sita', 30000,'N');
INSERT INTO customers VALUES (3, 'Arun', 25000,'N');
INSERT INTO customers VALUES (4, 'Meena', 10000,'N');

BEGIN
   FOR rec IN (SELECT customer_id, customer_name, balance  FROM customers WHERE balance > 10000) 
   LOOP
      UPDATE customers 
      SET isVip ='Y' 
      WHERE customer_id=rec.customer_id;

      DBMS_OUTPUT.PUT_LINE('Name: ' || rec.customer_name || 'balance: '|| rec.balance || 'VIP status: Y ' );
   END LOOP;
END;
/
select * from customers;

