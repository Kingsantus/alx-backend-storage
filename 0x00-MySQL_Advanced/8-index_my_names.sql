-- Create the index idx_name_first on the first letter of the name column
DELIMITER $$
CREATE INDEX idx_name_first ON names (LEFT(name, 1))$$
DELIMITER ;
