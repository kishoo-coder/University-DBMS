-- Insert data into departments table
INSERT INTO department (department_id, name) VALUES
(1, 'Computer Science');

INSERT INTO department (department_id, name) VALUES
(2, 'Mathematics');

INSERT INTO department (department_id, name) VALUES
(3, 'Physics');

-- Insert data into students table
INSERT INTO students (student_id, name, email, department_id, dob, student_level) VALUES
(1, 'John Doe', 'john.doe@example.com', 1, TO_DATE('2000-05-15', 'YYYY-MM-DD'), 1);

INSERT INTO students (student_id, name, email, department_id, dob, student_level) VALUES
(2, 'Jane Smith', 'jane.smith@example.com', 2, TO_DATE('2001-02-20', 'YYYY-MM-DD'), 2);

INSERT INTO students (student_id, name, email, department_id, dob, student_level) VALUES
(3, 'Alice Johnson', 'alice.johnson@example.com', 3, TO_DATE('1999-11-10', 'YYYY-MM-DD'), 3);


-- Insert data into teachers table
INSERT INTO teachers (teacher_id, name, email) VALUES
(1, 'Professor Brown', 'brown@example.com');

INSERT INTO teachers (teacher_id, name, email) VALUES
(2, 'Professor Green', 'green@example.com');

INSERT INTO teachers (teacher_id, name, email) VALUES
(3, 'Professor White', 'white@example.com');

-- Insert data into course table
INSERT INTO course (course_id, teacher_id, name, department_id, hours) VALUES
(101, 1, 'Introduction to Programming', 1, 3);

INSERT INTO course (course_id, teacher_id, name, department_id, hours) VALUES
(102, 2, 'Calculus I', 2, 3);

INSERT INTO course (course_id, teacher_id, name, department_id, hours) VALUES
(103, 3, 'Modern Physics', 3, 3);

-- Insert data into Grades table
INSERT INTO Grades (Student_ID, Course_ID, Grade) VALUES
(1, 101, 90);

INSERT INTO Grades (Student_ID, Course_ID, Grade) VALUES
(1, 104, 88);

INSERT INTO Grades (Student_ID, Course_ID, Grade) VALUES
(2, 102, 85);

INSERT INTO Grades (Student_ID, Course_ID, Grade) VALUES
(2, 105, 82);

INSERT INTO Grades (Student_ID, Course_ID, Grade) VALUES
(3, 103, 88);

-- Insert more data into Grades table
INSERT INTO Grades (Student_ID, Course_ID, Grade) VALUES
(4, 104, 92);

INSERT INTO Grades (Student_ID, Course_ID, Grade) VALUES
(5, 105, 87);

INSERT INTO Grades (Student_ID, Course_ID, Grade) VALUES
(6, 106, 84);

INSERT INTO Grades (Student_ID, Course_ID, Grade) VALUES
(7, 107, 91);

INSERT INTO Grades (Student_ID, Course_ID, Grade) VALUES
(8, 108, 86);

INSERT INTO Grades (Student_ID, Course_ID, Grade) VALUES
(9, 109, 83);

INSERT INTO Grades (Student_ID, Course_ID, Grade) VALUES
(10, 110, 90);

INSERT INTO Grades (Student_ID, Course_ID, Grade) VALUES
(11, 111, 85);

INSERT INTO Grades (Student_ID, Course_ID, Grade) VALUES
(12, 112, 88);

INSERT INTO Grades (Student_ID, Course_ID, Grade) VALUES
(13, 113, 92);

INSERT INTO Grades (Student_ID, Course_ID, Grade) VALUES
(14, 114, 87);

INSERT INTO Grades (Student_ID, Course_ID, Grade) VALUES
(15, 115, 84);

-- Insert data into teaches table
INSERT INTO teaches (course_id, teacher_id) VALUES
(101, 1);

INSERT INTO teaches (course_id, teacher_id) VALUES
(102, 2);

INSERT INTO teaches (course_id, teacher_id) VALUES
(103, 3);

-- Insert more data into students table
INSERT INTO students (student_id, name, email, department_id, dob, student_level) VALUES
(4, 'Michael Johnson', 'michael.johnson@example.com', 1, TO_DATE('2002-08-25', 'YYYY-MM-DD'), 1);

INSERT INTO students (student_id, name, email, department_id, dob, student_level) VALUES
(5, 'Emily Wilson', 'emily.wilson@example.com', 2, TO_DATE('2003-04-17', 'YYYY-MM-DD'), 2);

INSERT INTO students (student_id, name, email, department_id, dob, student_level) VALUES
(6, 'David Lee', 'david.lee@example.com', 3, TO_DATE('2001-10-12', 'YYYY-MM-DD'), 3);

INSERT INTO students (student_id, name, email, department_id, dob, student_level) VALUES
(7, 'Sarah Brown', 'sarah.brown@example.com', 1, TO_DATE('2000-03-08', 'YYYY-MM-DD'), 2);

INSERT INTO students (student_id, name, email, department_id, dob, student_level) VALUES
(8, 'James Miller', 'james.miller@example.com', 2, TO_DATE('2002-11-21', 'YYYY-MM-DD'), 3);

INSERT INTO students (student_id, name, email, department_id, dob, student_level) VALUES
(9, 'Emma Garcia', 'emma.garcia@example.com', 3, TO_DATE('2003-06-14', 'YYYY-MM-DD'), 1);

INSERT INTO students (student_id, name, email, department_id, dob, student_level) VALUES
(10, 'Daniel Martinez', 'daniel.martinez@example.com', 1, TO_DATE('2001-01-30', 'YYYY-MM-DD'), 2);

INSERT INTO students (student_id, name, email, department_id, dob, student_level) VALUES
(11, 'Olivia Robinson', 'olivia.robinson@example.com', 2, TO_DATE('2000-07-05', 'YYYY-MM-DD'), 3);

INSERT INTO students (student_id, name, email, department_id, dob, student_level) VALUES
(12, 'Noah Taylor', 'noah.taylor@example.com', 3, TO_DATE('2002-09-18', 'YYYY-MM-DD'), 1);

INSERT INTO students (student_id, name, email, department_id, dob, student_level) VALUES
(13, 'Ava Clark', 'ava.clark@example.com', 1, TO_DATE('2003-03-12', 'YYYY-MM-DD'), 2);

INSERT INTO students (student_id, name, email, department_id, dob, student_level) VALUES
(14, 'William Hernandez', 'william.hernandez@example.com', 2, TO_DATE('2001-12-27', 'YYYY-MM-DD'), 3);

INSERT INTO students (student_id, name, email, department_id, dob, student_level) VALUES
(15, 'Sophia Young', 'sophia.young@example.com', 3, TO_DATE('2000-08-09', 'YYYY-MM-DD'), 1);


-- Insert more data into teachers table
INSERT INTO teachers (teacher_id, name, email) VALUES
(4, 'Professor Grey', 'grey@example.com');

INSERT INTO teachers (teacher_id, name, email) VALUES
(5, 'Professor Brown', 'brown2@example.com');

INSERT INTO teachers (teacher_id, name, email) VALUES
(6, 'Professor Black', 'black@example.com');

INSERT INTO teachers (teacher_id, name, email) VALUES
(7, 'Professor White', 'white2@example.com');

INSERT INTO teachers (teacher_id, name, email) VALUES
(8, 'Professor Red', 'red@example.com');

INSERT INTO teachers (teacher_id, name, email) VALUES
(9, 'Professor Blue', 'blue@example.com');

INSERT INTO teachers (teacher_id, name, email) VALUES
(10, 'Professor Purple', 'purple@example.com');

INSERT INTO teachers (teacher_id, name, email) VALUES
(11, 'Professor Yellow', 'yellow@example.com');

INSERT INTO teachers (teacher_id, name, email) VALUES
(12, 'Professor Green', 'green2@example.com');

INSERT INTO teachers (teacher_id, name, email) VALUES
(13, 'Professor Orange', 'orange@example.com');

INSERT INTO teachers (teacher_id, name, email) VALUES
(14, 'Professor Pink', 'pink@example.com');

INSERT INTO teachers (teacher_id, name, email) VALUES
(15, 'Professor Cyan', 'cyan@example.com');


-- Insert more data into course table
INSERT INTO course (course_id, name, department_id, hours) VALUES
(104, 'Database Management', 1, 2);

INSERT INTO course (course_id, name, department_id, hours) VALUES
(105, 'Statistics', 2, 3);

INSERT INTO course (course_id, name, department_id, hours) VALUES
(106, 'Electromagnetism', 3, 3);

INSERT INTO course (course_id, name, department_id, hours) VALUES
(107, 'Web Development', 1, 2);

INSERT INTO course (course_id, name, department_id, hours) VALUES
(108, 'Linear Algebra', 2, 3);

INSERT INTO course (course_id, name, department_id, hours) VALUES
(109, 'Quantum Mechanics', 3, 3);

INSERT INTO course (course_id, name, department_id, hours) VALUES
(110, 'Software Engineering', 1, 2);

INSERT INTO course (course_id, name, department_id, hours) VALUES
(111, 'Differential Equations', 2, 3);

INSERT INTO course (course_id, name, department_id, hours) VALUES
(112, 'Particle Physics', 3, 3);

INSERT INTO course (course_id, name, department_id, hours) VALUES
(113, 'Computer Networks', 1, 2);

INSERT INTO course (course_id, name, department_id, hours) VALUES
(114, 'Data Structures', 2, 3);

INSERT INTO course (course_id, name, department_id, hours) VALUES
(115, 'Astrophysics', 3, 3);

-------------------------------------------------------------
ALTER TABLE students
ADD gpa NUMBER(6,3);
------------------------------
alter table students add hours_finished number default 0;
