USE devcamp_sql_university_schema;

SELECT courses.course_name, GROUP_CONCAT(students.students_name) AS enrolled_students
FROM courses
JOIN grades ON courses.course_id = grades.grades_course_id
JOIN students ON grades.grades_student_id = students.student_id
GROUP BY courses.course_name;