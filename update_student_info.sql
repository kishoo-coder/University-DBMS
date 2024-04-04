-- Procedure to update student information
CREATE OR REPLACE PROCEDURE update_student_info(
    student_id IN INT,
    new_name IN VARCHAR2 DEFAULT NULL,
    new_email IN VARCHAR2 DEFAULT NULL,
    new_department_id IN INT DEFAULT NULL,
    new_dob IN DATE DEFAULT NULL,
    new_student_level IN INT DEFAULT NULL
) IS
BEGIN
    UPDATE students
    SET name = COALESCE(new_name, name),
        email = COALESCE(new_email, email),
        department_id = COALESCE(new_department_id, department_id),
        dob = COALESCE(new_dob, dob),
        student_level = COALESCE(new_student_level, student_level)
    WHERE student_id = update_student_info.student_id;
END;
----------------------------------

BEGIN
    update_student_info(
        student_id => 1, 
        new_name => 'mo', 
        new_email => 'mo.email@example.com', 
        new_department_id => 2, 
        new_dob => TO_DATE('2002-01-01', 'YYYY-MM-DD'), 
        new_student_level => 2
    );
END;
show errors

--------------------------------
BEGIN
    update_student_info(
        student_id => 1, 
        new_name => 'me'
    );
END;
