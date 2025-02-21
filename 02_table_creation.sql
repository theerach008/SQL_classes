CREATE TABLE tk_test (
    name VARCHAR(50),
    class VARCHAR(50),
    sub VARCHAR(50)
);

CREATE TABLE tk_test01 (
    name VARCHAR(10)
);

CREATE TABLE BookRejo (
    Book_id INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(25) NOT NULL,
    Author VARCHAR(25),
    Price FLOAT(25)
);

CREATE TABLE emp (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE,
    experience INT
);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------##data_insertion.sql
INSERT INTO tk_test (name, class, sub) VALUES ('tk', '12th', 'tamil');
INSERT INTO tk_test (name, class, sub) VALUES ('xx', '11th', 'english'), ('yy', '11th', 'english');

INSERT INTO tk_test01 (name) VALUES ('tk'), ('M');

INSERT INTO BookRejo (Title, Author, Price)
VALUES ('SQL2', 'JK', 3000), ('SQL3', 'LK', 310), ('SQL4', 'AK', 330), ('SQL5', 'TK', 400);

--------------------------------------------------------------------------------select_queries.sql
SELECT * FROM tk_test;
SELECT * FROM tk_test01;
SELECT * FROM BookRejo;
SELECT DATABASE();
SHOW TABLES;
DESC BookRejo;

