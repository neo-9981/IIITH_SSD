DELIMITER $$
CREATE PROCEDURE customerInBangalore(IN city VARCHAR(255))
BEGIN
	SELECT CUST_NAME 
 	FROM customer
	WHERE WORKING_AREA = city;
END $$
DELIMITER ;
CALL customerInBangalore('Bangalore');
