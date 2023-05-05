USE devcamp_sql_university_schema;

SELECT professors.professors_name, AVG(Grades.grade) AS average_grade
FROM professors
JOIN courses ON professors.professor_id = courses.course_professor_id
JOIN grades ON courses.course_id = grades.grades_course_id
GROUP BY professors.professors_name;
