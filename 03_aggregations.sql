SELECT SUM(salary) FROM emp;
SELECT COUNT(id) FROM emp;
SELECT MIN(salary) FROM emp;
SELECT MAX(salary) FROM emp;
SELECT AVG(salary) FROM emp;


-----------------------------------------------------------------like_clauses.sql-
SELECT * FROM emp WHERE name LIKE "a%";
SELECT * FROM emp WHERE name LIKE "%a";
SELECT * FROM emp WHERE name LIKE "_a%";
SELECT * FROM emp WHERE name LIKE "%_a";
SELECT * FROM emp WHERE name LIKE "%a%";
SELECT * FROM emp WHERE name LIKE "%__a%";

-----------------------------------------------------------------subqueries.sql

SELECT * FROM emp WHERE name = (SELECT name FROM emp WHERE name LIKE 'M%' LIMIT 1);
SELECT *, CONCAT(name, " is max salary getting person") AS result 
FROM emp 
WHERE salary = (SELECT MAX(salary) FROM emp);
