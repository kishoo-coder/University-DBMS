set serveroutput on;
CREATE OR REPLACE PROCEDURE CASESTUDY.update_gpa2 IS
    total_hours NUMBER := 0;
    total_grades NUMBER := 0;
    v_gpa NUMBER;
BEGIN
    FOR student_record IN (SELECT DISTINCT student_id FROM grades) LOOP
        v_gpa := 0; -- Reset GPA for each student
        total_hours := 0;
        total_grades := 0; -- Reset total hours for each student
        
        FOR course_record IN (SELECT g.student_id, g.course_id, g.grade, c.hours
                              FROM grades g
                              JOIN course c ON g.course_id = c.course_id
                              WHERE g.student_id = student_record.student_id) LOOP
            total_hours := total_hours + course_record.hours;
            
            IF course_record.grade >= 90 THEN
                total_grades := total_grades + (4 * course_record.hours);
            ELSIF course_record.grade >= 85 THEN
                total_grades := total_grades + (3.7 * course_record.hours);
            ELSIF course_record.grade >= 80 THEN
                total_grades := total_grades + (3.3 * course_record.hours);
            ELSIF course_record.grade >= 75 THEN
                total_grades := total_grades + (3 * course_record.hours);
            ELSIF course_record.grade >= 70 THEN
                total_grades := total_grades + (2.7 * course_record.hours);
            ELSIF course_record.grade >= 65 THEN
                total_grades := total_grades + (2.3 * course_record.hours);
            ELSIF course_record.grade >= 60 THEN
                total_grades := total_grades + (2 * course_record.hours);
            ELSE
                total_grades := total_grades + (0 * course_record.hours);
            END IF;
        END LOOP;
        
        IF total_hours != 0 THEN
            v_gpa := total_grades / total_hours;
            -- Uncomment the following line if you want to see the output
            -- DBMS_OUTPUT.PUT_LINE(student_record.student_id || ' has GPA = ' || v_gpa);
            
            UPDATE students
            SET gpa = v_gpa
            WHERE student_id = student_record.student_id;
        
        ELSE
            -- If total_hours is zero, assign GPA as zero
            v_gpa := 0;

            -- Update the GPA for the student in the students table as zero
            UPDATE students
            SET gpa = v_gpa
            WHERE student_id = student_record.student_id;
        END IF;
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        -- Handle exceptions
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;

-- calling
begin
  update_gpa2; 
end;
---------------------------------------
