USE devcamp_sql_university_schema;

SELECT students.students_name, courses.course_name AS course_name, MAX(grades.grade) AS top_grade
FROM students
JOIN grades ON students.student_id = grades.grades_student_id
JOIN courses ON grades.grades_course_id = courses.course_id
GROUP BY students.students_name, courses.course_name;
