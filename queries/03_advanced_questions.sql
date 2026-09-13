USE online_course_analysis;

-- ==============================================================
-- ADVANCED
-- SUBQUERIES, CTEs, WINDOW FUNCTIONS, VIEWS, STORED PROCEDURES
-- ==============================================================


-- 18. Find students who scored higher than the overall
--     average score.

SELECT s.student_name, e.score
FROM students s
JOIN enrollments e
ON s.student_id = e.student_id
WHERE e.score > (
    SELECT AVG(score) FROM enrollments
)
ORDER BY e.score DESC;


-- 19. Find students who spent more hours than the
--     average learning hours.

SELECT s.student_name, e.hours_spent
FROM students s
JOIN enrollments e
ON s.student_id = e.student_id
WHERE e.hours_spent > (
    SELECT AVG(hours_spent)
    FROM enrollments
)
ORDER BY e.hours_spent DESC;


-- 20. Identify students who enrolled in more than one course.

SELECT s.student_name
FROM students s
WHERE s.student_id IN (
    SELECT student_id
    FROM enrollments
    GROUP BY student_id
    HAVING COUNT(course_id) > 1
);


-- 21. Rank students based on their score.

SELECT s.student_name, e.score,
       RANK() OVER (
           ORDER BY e.score DESC
       ) AS score_rank
FROM students s
JOIN enrollments e
ON s.student_id = e.student_id;


-- 22. Create a CTE showing course-wise enrollment
--     and average score.

WITH course_analysis AS (
    SELECT c.course_name,
           COUNT(e.enrollment_id) AS total_enrollments,
           AVG(e.score) AS average_score
    FROM enrollments e
    JOIN courses c
    ON e.course_id = c.course_id
    GROUP BY c.course_id, c.course_name
)

SELECT *
FROM course_analysis
ORDER BY average_score DESC; 


-- 23. Create a view called course_performance_summary.

CREATE VIEW course_performance_summary AS
SELECT c.course_name,
       c.category,
       COUNT(e.enrollment_id) AS total_enrollments,
       AVG(e.score) AS average_score,
       SUM(e.hours_spent) AS total_hours
FROM courses c
JOIN enrollments e
ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name, c.category;


-- View the result

SELECT *
FROM course_performance_summary;


-- 24. Rank students within each course.

SELECT c.course_name,
       s.student_name,
       e.score,
       RANK() OVER (
           PARTITION BY c.course_id
           ORDER BY e.score DESC
       ) AS course_rank
FROM courses c 
JOIN enrollments e
ON e.course_id = c.course_id
JOIN students s
ON s.student_id = e.student_id
ORDER BY c.course_name, course_rank;


-- 25. Create a stored procedure to show a student's
--     complete course history.

DELIMITER //
CREATE PROCEDURE get_student_history(IN p_student_id INT)
BEGIN
    SELECT s.student_id,
           s.student_name,
           c.course_name,
           c.category,
           e.enrollment_date,
           e.completion_status,
           e.score,
           e.hours_spent
    FROM students s
    JOIN enrollments e
    ON s.student_id = e.student_id
    JOIN courses c
    ON e.course_id = c.course_id
    WHERE s.student_id = p_student_id
    ORDER BY e.enrollment_date;
END //
DELIMITER ;

-- Run the stored procedure
CALL get_student_history(1);