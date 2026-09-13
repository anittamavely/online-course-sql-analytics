USE online_course_analysis;

-- =====================================================
-- INTERMEDIATE
-- JOINs, GROUP BY, HAVING, AGGREGATES
-- =====================================================


-- 8. What is the total number of enrollments?

SELECT COUNT(*) AS total_enrollments
FROM enrollments;


-- 9. Which course has the highest number of enrollments?

SELECT c.course_name,
       COUNT(e.enrollment_id) AS total_enrollments
FROM enrollments as e
JOIN courses as c
ON e.course_id = c.course_id
GROUP BY c.course_id, c.course_name
ORDER BY total_enrollments DESC
LIMIT 1;


-- 10. List the top 5 students by total learning hours.

SELECT s.student_name,
       SUM(e.hours_spent) AS total_hours
FROM enrollments e
JOIN students s
ON e.student_id = s.student_id
GROUP BY s.student_id, s.student_name
ORDER BY total_hours DESC
LIMIT 5;


-- 11. Which courses have more than 3 enrolled students?

SELECT c.course_name,
       COUNT(e.student_id) AS total_students
FROM enrollments e
JOIN courses c
ON e.course_id = c.course_id
GROUP BY c.course_id, c.course_name
HAVING total_students > 3;


-- 12. What is the average score for each education level?

SELECT s.education_level,
       AVG(e.score) AS average_score
FROM enrollments e
JOIN students s
ON e.student_id = s.student_id
GROUP BY s.education_level;


-- 13. What is the average score for each course?

SELECT c.course_name,
       AVG(e.score) AS average_score
FROM enrollments e
JOIN courses c
ON e.course_id = c.course_id
GROUP BY c.course_id, c.course_name;


-- 14. How many completed students are there for each course,
--     and what is the average score?

SELECT c.course_name,
       COUNT(CASE
                 WHEN e.completion_status = 'Completed' THEN 1
            END) AS completed_students,
       AVG(e.score) AS average_score
FROM enrollments e
JOIN courses c
ON e.course_id = c.course_id
GROUP BY c.course_id, c.course_name;


-- 15. Which course categories have more than 5 enrollments?

SELECT c.category,
       COUNT(e.enrollment_id) AS total_enrollments
FROM enrollments e
JOIN courses c
ON e.course_id = c.course_id
GROUP BY c.category
HAVING total_enrollments > 5;


-- 16. What is the total learning time for each course?

SELECT c.course_name,
       SUM(e.hours_spent) AS total_hours
FROM enrollments e
JOIN courses c
ON e.course_id = c.course_id
GROUP BY c.course_id, c.course_name;


-- 17. Find the highest score obtained in each course.

SELECT c.course_name,
       MAX(e.score) AS highest_score
FROM enrollments e
JOIN courses c
ON e.course_id = c.course_id
GROUP BY c.course_id, c.course_name;