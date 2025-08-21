USE ischool_v2;
SELECT concat(course_code, course_number) AS course_name,
section_number, concat(semester, year) AS semester,
course_description,
delivery_type
FROM course_sections
INNER JOIN courses
ON course_sections.course_id = courses.course_id
INNER JOIN delivery
ON course_sections.delivery_id = delivery.delivery_id
WHERE delivery_type = "Face-to-Face"
UNION
SELECT concat(course_code, course_number) AS course_name,
section_number, concat(semester, year) AS semester,
course_description, "Hybrid/online" AS delivery_type
FROM course_sections
INNER JOIN courses
ON course_sections.course_id = courses.course_id
INNER JOIN delivery
ON course_sections.delivery_id = delivery.delivery_id
WHERE delivery_type = "online" || delivery_type = "Blended learning"
ORDER BY course_name;
/*ANSWER2
*/
USE ischool_v2;
SELECT concat(fname," ", lname) AS name,
race, pronoun
FROM people
LEFT JOIN person_race USING(person_id)
LEFT JOIN race USING(race_id)
LEFT JOIN person_pronoun USING(person_id)
LEFT JOIN pronouns USING(pronoun_id)
ORDER BY name;
