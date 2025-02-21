DELIMITER //
CREATE FUNCTION function_add(a INT, b INT)
RETURNS INT
DETERMINISTIC 
BEGIN 
    DECLARE sum INT;
    SET sum = a + b;
    RETURN sum;
END //
DELIMITER ;
SELECT function_add(5,7);

DELIMITER //
CREATE FUNCTION function_sub(a INT, b INT)
RETURNS INT
DETERMINISTIC
BEGIN 
    DECLARE sum INT;
    SET sum = a - b;
    RETURN sum;
END //
DELIMITER ;
SELECT function_sub(5,7);

-----------------------------------------------------------------------------Function for Retrieving Car Model
DELIMITER //
CREATE FUNCTION model_fun(input_name VARCHAR(20))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN 
    DECLARE car_model VARCHAR(20);
    SELECT model INTO car_model FROM cars WHERE make = input_name LIMIT 1;
    RETURN car_model;
END //
DELIMITER ;
SELECT model_fun('Ferrari');

