--  trigger that resets the attribute valid_email only when the email has been changed.
-- it importing from another file
DELIMITER $$
CREATE TRIGGER before_update_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF NEW.email <> OLD.email THEN
        SET NEW.valid_email = 0;
    END IF;
END$$
DELIMITER ;
