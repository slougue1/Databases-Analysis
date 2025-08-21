

/*Question 1*/
SET GLOBAL log_bin_trust_function_creators = 1;
DROP VIEW IF EXISTS student_addresses;
CREATE VIEW student_addresses
AS
SELECT CONCAT(lname, ", " ,fname) AS person, pronoun, department,
CONCAT(street, " " , city,", " , state) AS "Location Address",
classification
FROM people
JOIN person_pronoun USING(person_id)
JOIN pronouns USING(pronoun_id)
JOIN person_addresses USING(person_id)
JOIN addresses USING(address_id)
JOIN person_classificationS USING(person_id)
JOIN classification USING(classification_id)
WHERE state IS NOT NULL AND classification = "student"
ORDER BY person;
SELECT * FROM student_addresses
