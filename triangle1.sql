DELIMITER $$
CREATE PROCEDURE DrawTriangle(IN pI INT)
BEGIN
    DECLARE i INT DEFAULT pI;
    WHILE i > 0 DO
        SELECT REPEAT('* ', i);
        SET i = i - 1;
    END WHILE;
END $$

DELIMITER ;
CALL DrawTriangle(20);