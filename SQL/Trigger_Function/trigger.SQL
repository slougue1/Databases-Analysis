## Partial script 
# Please remove the comments once finished

USE ischool_v2;

## Run the code below before working on the trigger
DROP TABLE IF EXISTS new_person_records;
CREATE TABLE `new_person_records` (
`new_person_record_id` int(11) NOT NULL AUTO_INCREMENT, 
`new_person_record_text` varchar(300) DEFAULT NULL,  
`new_person_record_timestamp` datetime DEFAULT NULL, PRIMARY 
KEY (`new_person_record_id`)
) ENGINE=InnoDB;  

DROP TRIGGER IF EXISTS ischool_v2.new_person;
DELIMITER //
CREATE TRIGGER new_person
AFTER INSERT ON people
FOR EACH ROW

BEGIN
	DECLARE person_id_var INT;
    DECLARE lname_var VARCHAR(50);
    DECLARE fname_var VARCHAR(50);
    DECLARE department_var VARCHAR(50);
    DECLARE college_var VARCHAR(50);
	## Declare the remaining variables below for last name, first name, department, and college
    # Don't forget to declare their data types!
    
	SET person_id_var = NEW.person_id;
    SET lname_var = NEW.lname;
    SET fname_var = NEW.fname;
    SET department_var = NEW.department;
    SET college_var = NEW.college;
	## This sets the value of the variable to the person id of the newly added row
    # Do this for last name, first name, department, and college
    
	#INSERT INTO new_person_records VALUES();
    ## Add the values that should be inserted into the new_person_records table when the trigger executes
    # Hint: you will need a CONCAT to generate the text value that will go into the new_person_record_text column
    INSERT INTO new_person_records (new_person_record_text, new_person_record_timestamp) 
    VALUES (CONCAT('You have added a new person ', NEW.lname , '  ', NEW.fname, ' who is affiliated 
		with ', NEW.department, ' in the ', NEW.college, '.'),SYSDATE());
END//

DELIMITER ;

## Test your code:
# Run this INSERT query:
# INSERT INTO ischool_v2.people VALUES (7, 'Potter','Harry', 'potter@umd.edu', 'College of Information Studies', 'MIM',NULL,NOW());

## Then run this SELECT query:
# SELECT * FROM new_person_records;

## Do your see a row with the following values?
# '7', 'You have added a new person, Harry Potter, who is affiliated with MIM in the College of Information Studies', ''2022-11-12 19:23:35''
# NOTE: The date and time in your 3rd column will be different.
