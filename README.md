# Project Title: Online Course & Student Performance Analysis
SQL analysis of an online learning platform's students, courses, and enrollments using MySQL.

## Project Overview
---------------------
A MySQL project analyzing students, courses, and enrollments. The project contains 25 SQL questions covering beginner, intermediate, and advanced SQL concepts.


## Tools Used
--------------
- MySQL Workbench


## Dataset
-----------
Custom-created dataset:
- 15 students
- 8 courses
- 30 enrollments


## Database Schema
-------------------
```text
Students
    |
    | student_id
    |
Enrollments
    |
    | course_id
    |
Courses
```

Relationships:
- students.student_id → enrollments.student_id
- courses.course_id → enrollments.course_id


## SQL Concepts Used
---------------------
### Beginner
SELECT, WHERE, ORDER BY, LIMIT

### Intermediate
JOINs, GROUP BY, HAVING, COUNT(), SUM(), AVG(), MAX()

### Advanced
Subqueries, CTEs, Window Functions, RANK(), Views, Stored Procedures


## Key Findings
----------------
- Data Analytics has the highest number of enrollments: 7.
- Top 5 students by total learning hours: Adithya (130), Vishnu (125), Diya (123), Nikhil (118), Aparna (103).
- Highest individual score: 96 in Machine Learning Basics.
- Data Analytics is the only category with more than 5 enrollments.


## What I Learned
------------------
This project strengthened my understanding of relational databases and practical SQL analysis, including JOINs, aggregate functions, subqueries, CTEs, window functions, views, and stored procedures.
