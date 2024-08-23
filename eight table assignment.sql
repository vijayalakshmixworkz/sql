
CREATE 8 TABLES WITH 10 COLUMNS USE PRIMARY KEY AND FOREIGN KEY CONSTRAINTS.
1) use ONE to ONE
2) ONE to MANY
3) MANY to ONE
4) MANY to MANY
5) INSERT 20 DATA FOR EACH TABLE .
6) USE CASE STATEMENT TO UPDATE ANY COLUMN VALUES.
7) USE LIMIT AND OFFSET TO FETCH DATA.
8) USE GROUP BY AND HAVING FOR AGGREGATE FUNCTIONS.
9) USE ORDER BY TO SORT THE DATA.
use things;
CREATE TABLE users (
    user_id BIGINT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);
CREATE TABLE user_profiles (
    profile_id BIGINT PRIMARY KEY,
    user_id BIGINT UNIQUE NOT NULL,
    bio TEXT,
    profile_picture VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
CREATE TABLE departments (
    department_id BIGINT PRIMARY KEY,
    department_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE employees (
    employee_id BIGINT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id BIGINT NOT NULL,
    hire_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
CREATE TABLE projects (
    project_id BIGINT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL
);

CREATE TABLE tasks (
    task_id BIGINT PRIMARY KEY,
    task_description TEXT NOT NULL,
    project_id BIGINT NOT NULL,
    status VARCHAR(50),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);
CREATE TABLE students (
    student_id BIGINT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL
);
CREATE TABLE courses (
    course_id BIGINT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);
CREATE TABLE student_courses (
    student_id BIGINT NOT NULL,
    course_id BIGINT NOT NULL,
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert into users
INSERT INTO users  VALUES (1, 'johndoe', 'john.doe@example.com');
INSERT INTO users  VALUES (2, 'viji', 'viji@gmail.com');
INSERT INTO users  VALUES (3, 'vidya', 'vidya.gmail.com');
INSERT INTO users  VALUES (4, 'pragu', 'pragu@gmail.com');
INSERT INTO users  VALUES (5, 'hemanth', 'hemanth@gmail.com');
INSERT INTO users  VALUES (6, 'sina', 'sina@gmail.com');
INSERT INTO users  VALUES (7, 'sapna', 'sapna@gmail.com');
INSERT INTO users  VALUES (8, 'gagana', 'gagana@gmail.com');
INSERT INTO users  VALUES (9, 'kiran', 'kiran@gmail.com');
INSERT INTO users  VALUES (10, 'ganavi', 'ganavi@gmail.com');
INSERT INTO users  VALUES (11, 'teju', 'teju@gmail.com');
INSERT INTO users  VALUES (12, 'chethu', 'chethu@gmail.com');
INSERT INTO users  VALUES (13, 'dhruva', 'dhruva@gmail.com');
INSERT INTO users  VALUES (14, 'ram', 'ram@gmail.com');
INSERT INTO users  VALUES (15, 'mahadevi', 'mahadevi@gmail.com');
INSERT INTO users  VALUES (16, 'kumar', 'kumar@gmail.com');
INSERT INTO users  VALUES (17, 'sanju', 'sanju@gmail.com');
INSERT INTO users  VALUES (18, 'umesh', 'umesh@gmail.com');
INSERT INTO users  VALUES (19, 'arya', 'arya@gmail.com');
INSERT INTO users  VALUES (20, 'lisa', 'lisa@gmail.com');


-- Insert into user_profiles
INSERT INTO user_profiles (profile_id, user_id, bio, profile_picture) VALUES
(1, 1, 'Bio of John Doe', 'john.jpg'),
(2, 2, 'Bio of Jane Doe', 'jane.jpg'),
... -- continue up to 20 profiles

-- Insert into departments
INSERT INTO departments (department_id, department_name) VALUES
(1, 'HR'),
(2, 'Engineering'),
... -- continue up to 20 departments

-- Insert into employees
INSERT INTO employees (employee_id, name, department_id) VALUES
(1, 'Alice', 1),
(2, 'Bob', 2),
... -- continue up to 20 employees

-- Insert into projects
INSERT INTO projects (project_id, project_name) VALUES
(1, 'Project A'),
(2, 'Project B'),
... -- continue up to 20 projects

-- Insert into tasks
INSERT INTO tasks (task_id, task_description, project_id) VALUES
(1, 'Task 1 for Project A', 1),
(2, 'Task 2 for Project B', 2),
... -- continue up to 20 tasks

-- Insert into students
INSERT INTO students (student_id, student_name) VALUES
(1, 'Student One'),
(2, 'Student Two'),
... -- continue up to 20 students

-- Insert into courses
INSERT INTO courses (course_id, course_name) VALUES
(1, 'Course One'),
(2, 'Course Two'),
... -- continue up to 20 courses

-- Insert into student_courses
INSERT INTO student_courses (student_id, course_id) VALUES
(1, 1),
(1, 2),
... -- continue up to 20 enrollments




