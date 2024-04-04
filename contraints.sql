ALTER TABLE students
ADD gpa NUMBER(6,3);
------------------------------
alter table students add hours_finished number default 0;
------------------------------
-- Check Constraints:

ALTER TABLE grades
ADD CONSTRAINT grades_range CHECK (grade >= 0 AND grade <= 100);
-----------------
ALTER TABLE students
ADD CONSTRAINT check_gpa CHECK (gpa <= 4.00);
-----------------
ALTER TABLE course
ADD CONSTRAINT check_hours CHECK (hours <= 3);
-----------------
ALTER TABLE students
ADD CONSTRAINT check_email
CHECK (REGEXP_LIKE(email,'^[A-Za-z0-9._]+@example.com'));
