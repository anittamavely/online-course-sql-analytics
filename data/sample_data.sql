-- 2. Insert Data

USE online_course_analysis;

-- Insert students
INSERT INTO students
(student_id, student_name, age, education_level)
VALUES
(1, 'Arun', 22, 'Graduate'),
(2, 'Meera', 24, 'Post Graduate'),
(3, 'Rahul', 21, 'Graduate'),
(4, 'Anjali', 23, 'Graduate'),
(5, 'Vishnu', 26, 'Post Graduate'),
(6, 'Sneha', 22, 'Graduate'),
(7, 'Akhil', 25, 'Graduate'),
(8, 'Diya', 23, 'Post Graduate'),
(9, 'Nikhil', 27, 'Post Graduate'),
(10, 'Amal', 21, 'Graduate'),
(11, 'Fathima', 24, 'Graduate'),
(12, 'Adithya', 26, 'Post Graduate'),
(13, 'Neha', 22, 'Graduate'),
(14, 'Rohit', 25, 'Graduate'),
(15, 'Aparna', 23, 'Post Graduate');


-- Insert courses
INSERT INTO courses
(course_id, course_name, category, instructor, course_fee)
VALUES
(101, 'Python for Beginners', 'Programming', 'John Mathew', 4000),
(102, 'Data Analytics', 'Data Analytics', 'Sarah Thomas', 6500),
(103, 'Power BI Essentials', 'Data Analytics', 'David Paul', 5000),
(104, 'SQL Fundamentals', 'Database', 'Anu Joseph', 4500),
(105, 'Excel for Business', 'Business', 'Maria George', 3500),
(106, 'Machine Learning Basics', 'Data Science', 'Kevin Thomas', 7500),
(107, 'Digital Marketing', 'Marketing', 'Priya Nair', 5500),
(108, 'Advanced Python', 'Programming', 'John Mathew', 6000);


-- Insert enrollments
INSERT INTO enrollments
(enrollment_id, student_id, course_id, enrollment_date,
 completion_status, score, hours_spent)
VALUES
(1, 1, 101, '2025-01-10', 'Completed', 85, 40),
(2, 1, 102, '2025-02-15', 'Completed', 91, 55),
(3, 2, 102, '2025-01-20', 'Completed', 88, 50),
(4, 2, 103, '2025-03-10', 'Completed', 92, 45),
(5, 3, 104, '2025-02-05', 'Completed', 78, 35),
(6, 3, 105, '2025-03-15', 'Completed', 82, 30),
(7, 4, 102, '2025-01-25', 'Completed', 95, 60),
(8, 4, 103, '2025-02-20', 'Completed', 89, 42),
(9, 5, 106, '2025-01-12', 'Completed', 94, 70),
(10, 5, 102, '2025-03-05', 'Completed', 90, 55),
(11, 6, 105, '2025-02-10', 'In Progress', 65, 20),
(12, 6, 107, '2025-03-20', 'Completed', 84, 38),
(13, 7, 101, '2025-01-18', 'Completed', 76, 32),
(14, 7, 104, '2025-02-25', 'Completed', 81, 36),
(15, 8, 102, '2025-01-30', 'Completed', 93, 58),
(16, 8, 106, '2025-03-12', 'Completed', 87, 65),
(17, 9, 106, '2025-01-15', 'Completed', 91, 68),
(18, 9, 108, '2025-02-18', 'Completed', 86, 50),
(19, 10, 101, '2025-03-01', 'In Progress', 60, 18),
(20, 10, 105, '2025-03-22', 'Completed', 79, 28),
(21, 11, 103, '2025-01-22', 'Completed', 88, 44),
(22, 11, 104, '2025-02-12', 'Completed', 90, 40),
(23, 12, 106, '2025-01-28', 'Completed', 96, 72),
(24, 12, 108, '2025-03-18', 'Completed', 93, 58),
(25, 13, 102, '2025-02-02', 'Completed', 89, 52),
(26, 13, 105, '2025-03-08', 'Completed', 85, 33),
(27, 14, 104, '2025-01-08', 'Completed', 75, 31),
(28, 14, 107, '2025-02-28', 'Completed', 80, 35),
(29, 15, 102, '2025-01-05', 'Completed', 94, 57),
(30, 15, 103, '2025-03-25', 'Completed', 91, 46);