
-- Week 2 Project: Student Performance & Enrollment Analysis
-- SQLite script for use in DBeaver

-- Drop tables if they already exist
DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS courses;

-- Create students table
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    major TEXT,
    gpa REAL
);

-- Create courses table
CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT NOT NULL,
    department TEXT NOT NULL,
    credits INTEGER
);

-- Create enrollments table
CREATE TABLE enrollments (
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
    grade TEXT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert sample data into students
INSERT INTO students (first_name, last_name, major, gpa) VALUES
('Alice', 'Johnson', 'Computer Science', 3.8),
('Bob', 'Smith', 'Business', 3.1),
('Charlie', 'Davis', 'Data Science', 3.5),
('Diana', 'Lee', 'Computer Science', 2.9),
('Ethan', 'Brown', 'Data Science', 3.7);

-- Insert sample data into courses
INSERT INTO courses (course_name, department, credits) VALUES
('Database Management', 'Computer Science', 3),
('Marketing 101', 'Business', 2),
('Machine Learning', 'Data Science', 4),
('Algorithms', 'Computer Science', 3);

-- Insert sample data into enrollments
INSERT INTO enrollments (student_id, course_id, grade) VALUES
(1, 1, 'A'),
(1, 4, 'B'),
(2, 2, 'B'),
(3, 1, 'A'),
(3, 3, 'A'),
(4, 1, 'C'),
(4, 4, 'B'),
(5, 3, 'A');
