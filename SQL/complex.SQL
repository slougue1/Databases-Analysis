

#QUESTION1
USE ischool_v2;
SELECT CONCAT(lname, " ", fname) as student_name,
count(section_id) AS enrollments,
sum(credits) AS credit_count,
TIME_FORMAT(course_sections.start_time,"%r") AS latest_start
FROM people
JOIN enrollments USING (person_id)
JOIN course_sections USING (section_id)
JOIN courses USING (course_id)
WHERE section_id in
(SELECT section_id
FROM course_sections
GROUP BY person_id
)
GROUP BY student_name with rollup
HAVING credit_count >= 9;

#QUESTION2

USE ischool_v2;
SELECT CONCAT(course_code, "", course_number) AS course,
course_description,
COUNT(course_id) AS section_count,
enrollment_count
FROM courses
JOIN (
SELECT course_id, COUNT(section_id) AS enrollment_count
FROM enrollments
JOIN course_sections USING (section_id)
GROUP BY course_id
) AS A_2
USING (course_id)
JOIN course_sections USING(course_id)
GROUP BY course_id
HAVING section_count >= 2
