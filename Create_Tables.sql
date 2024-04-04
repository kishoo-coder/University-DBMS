-- create departments 
create table department(
    department_id int primary key not null,
    name varchar2(50) not null
);

create table department(
    department_id int primary key not null,
    name varchar2(50) not null
);

-- create students
create  table students (
    student_id int primary key not null,    
    name varchar2(50) not null,
    email varchar2(100) not null,
    department_id int ,
    dob date not null,
    student_level int not null,
    
    foreign key (department_id) references department(department_id)
);

-- create teachers
create table teachers (
    teacher_id int primary key not null,    
    name varchar2(50) not null,
    email varchar2(100) not null,
);

-- create course 
create table course (
    course_id int primary key not null,
    name varchar2(50) not null,
    department_id int not null,
    hours int, 
    
    foreign key (department_id) references department(department_id),    
    foreign key (teacher_id) references teachers(teacher_id)    
);

-- Create Grades
CREATE TABLE Grades (
    Student_ID INT,
    Course_ID INT,
    Grade INT,
    PRIMARY KEY (Student_ID, Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);


-- Create teaches
create table teaches(
    course_id int ,
    teacher_id int ,
    primary key (course_id, teacher_id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);
