/*
Script matches picture in README.md
*/
USE ischool;
SELECT 
	CONCAT (course_code, " ",course_number) AS "iSchool courses",
    course_description AS "description", 
    course_prereq AS "prerequisites", 
    credits
FROM courses
WHERE course_number >= 301 && course_number <= 377;


USE ischool;
SELECT 
	right(person_id, 4) as "ID",
    CONCAT(fname, " ", LEFT(lname, 1)) as "name",
    LEFT(start_date, 10) as "start-date",
    department, title
FROM people
WHERE right(person_id, 4) <= 6127 && right(person_id, 4) >= 5988 && title IS NOT null
ORDER BY name
