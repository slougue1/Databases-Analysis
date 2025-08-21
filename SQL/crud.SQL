

/*This project copy thr courses and courses_section tables
amd insert a row

*/
/*ANSWER1
*/
USE ischool_v2;
SET SQL_SAFE_UPDATES=0;
DROP TABLE IF EXISTS courses_copy;
CREATE TABLE courses_copy LIKE courses;
INSERT INTO courses_copy SELECT * FROM courses;
INSERT INTO courses_copy
VALUES (83, "inst", "408M", "Data Analytics and Decision Making Methods",
NULL, NULL, 3);
DROP TABLE IF EXISTS course_sections_copy;
CREATE TABLE course_sections_copy LIKE course_sections;
INSERT INTO course_sections_copy SELECT * FROM course_sections;
INSERT INTO course_sections_copy
VALUES(179, "0101", "Fall", 2022, "Th", "15:30:00", "16:45:00", 83,
132466096, 1, 1, 34);
SELECT * FROM ischool_v2.courses_copy;
SELECT * FROM ischool_v2.course_sections_copy;
/*ANSWER2*/
USE ischool_v2;
UPDATE course_sections_copy
SET delivery_id = 2
WHERE section_id = 179 && delivery_id = 1;
SELECT concat(course_code, course_number) AS course_name,
section_id, delivery_type
FROM course_sections_copy
JOIN courses_copy USING (course_id)
JOIN delivery USING (delivery_id)
WHERE delivery_type = "Blended Learning";
/*ANSNWER3
*/
USE ischool_v2;
DELETE FROM course_sections_copy
WHERE section_id >= 164 && section_id<= 169;
SELECT section_id, section_number, semester, year, meeting_days
FROM course_sections_copy
Nidhi Nambiar
Incorrect data column(s) are updated because of incorrect condition (-3 points)
