CREATE TABLE employees (
    emp_id      NUMBER PRIMARY KEY,
    emp_name    VARCHAR2(100),
    department  VARCHAR2(50),
    salary      NUMBER(10, 2)
);
INSERT INTO employees VALUES (1, 'Ram', 'HR', 40000);
INSERT INTO employees VALUES (2, 'Srija', 'Finance', 50000);
INSERT INTO employees VALUES (3, 'Aruna', 'HR', 42000);  
INSERT INTO employees VALUES (4, 'Mehta', 'IT', 55000); 

CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus (
    dept_name IN VARCHAR2,
    bonus_pct IN NUMBER
) IS
BEGIN
    UPDATE employees
    SET salary = salary + (salary * bonus_pct / 100)
    WHERE department = dept_name;

    DBMS_OUTPUT.PUT_LINE('Bonus of ' || bonus_pct || '% applied to ' || dept_name || ' department.');
END;
/

BEGIN
    UpdateEmployeeBonus('HR', 10);
END;
/
select * from employees;
