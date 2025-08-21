## Partial script for
# Please remove the comments once finished

USE ischool_v2;
DROP FUNCTION IF EXISTS get_person_pronouns;

DELIMITER //
CREATE FUNCTION get_person_pronouns (
	fname_param VARCHAR(50),
    lname_param VARCHAR(50)
)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN 
	## Declare a new variable named "pronouns"
    DECLARE pronouns VARCHAR(50);
    # Write a select query that fetches the pronouns of a student given their first name and last name
    SELECT DISTINCT pronoun INTO pronouns
    FROM people
		LEFT JOIN person_pronoun USING(person_id)
		LEFT JOIN pronouns USING(pronoun_id)  
	# Assign the result of the query to the new pronouns variable
		WHERE fname_param = fname AND lname_param = lname;
    RETURN (pronouns); # (Return the pronouns variable)
END //
DELIMITER ;

## Test your code:
# Run this query:
#Sudent_test_file
# SELECT get_person_pronouns("Jessica","Jones");
# SELECT get_person_pronouns("Tomi","Avramovic");
# SELECT get_person_pronouns("Kamala","Khan");

# Does it return "she/her"?
