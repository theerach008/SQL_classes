USE theerach;

-- Creating the 'emp' table
CREATE TABLE emp (
    emp_id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    DOJ DATE NOT NULL DEFAULT '1000-01-01'
);

-- Inserting data into 'emp' table
INSERT INTO emp (emp_id, name, DOJ) VALUES (1, 'tk', '2025-02-10');
INSERT INTO emp VALUES (2, 'm', '2025-02-10');

-- Creating the 'emp_audit' table
CREATE TABLE emp_audit (
    emp_id INT,
    operations VARCHAR(20),
    trigger_date DATE
);

-- Creating a trigger to log inserts into 'emp_audit'
DELIMITER //
CREATE TRIGGER trg_test
AFTER INSERT ON emp 
FOR EACH ROW
BEGIN
    INSERT INTO emp_audit (emp_id, operations, trigger_date)
    VALUES (NEW.emp_id, 'INS', NOW());
END;
//
DELIMITER ;

-- Creating another trigger (Fixed: Correct use of NEW.emp_id)
DELIMITER //
CREATE TRIGGER Test_trg 
AFTER INSERT ON emp 
FOR EACH ROW
BEGIN
    INSERT INTO emp_audit(emp_id, operations, trigger_date) 
    VALUES (NEW.emp_id, 'INS', NOW());
END;
//
DELIMITER ;

-- Checking trigger details
SHOW CREATE TRIGGER trg_test;

-- Dropping the trigger if it exists
DROP TRIGGER IF EXISTS Test_trg;

-- Deleting null records from 'emp_audit'
DELETE FROM emp_audit WHERE emp_id IS NULL;

-- Viewing data from 'emp_audit' table
SELECT * FROM emp_audit;

