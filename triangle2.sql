DELIMITER $$
CREATE PROCEDURE DrawTriangle(IN pI INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i<=pI DO
        SELECT REPEAT('* ', i);
        SET i = i + 1;
    END WHILE;
END $$

DELIMITER ;

CALL DrawTriangle(20);