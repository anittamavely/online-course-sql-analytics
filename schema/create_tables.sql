-- 1. Create Databases and Tables

CREATE DATABASE online_course_analysis;
USE online_course_analysis;


-- Students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    age INT,
    education_level VARCHAR(50)
);


-- Courses table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    instructor VARCHAR(100),
    course_fee DECIMAL(8,2)
);


-- Enrollments table
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE,
    completion_status VARCHAR(30),
    score DECIMAL(5,2),
    hours_spent DECIMAL(6,2),

    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);