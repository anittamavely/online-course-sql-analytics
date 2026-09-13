USE online_course_analysis;

-- =====================================================
-- BEGINNER
-- SELECT, WHERE, ORDER BY, LIMIT
-- =====================================================


-- 1. List all students from the Graduate education level.

SELECT * FROM students
WHERE education_level = 'Graduate';


-- 2. Show all enrollments made between January and March 2025.

SELECT * FROM enrollments
WHERE enrollment_date BETWEEN '2025-01-01' AND '2025-03-31';


-- 3. Find the 10 highest scores.

SELECT *
FROM enrollments
ORDER BY score DESC
LIMIT 10;


-- 4. List all enrollments with status = 'Completed'.

SELECT * FROM enrollments
WHERE completion_status = 'Completed';


-- 5. Find students who are above 23 years old.

SELECT * FROM students
WHERE age > 23;


-- 6. Find the 5 most expensive courses.

SELECT * FROM courses
ORDER BY course_fee DESC
LIMIT 5;


-- 7. List all courses belonging to the Data Analytics category.

SELECT * FROM courses
WHERE category = 'Data Analytics';
