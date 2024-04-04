-- procedure to update_grade in grades table
CREATE OR REPLACE PROCEDURE update_teacher_info(
    teacher_id IN INT,
    new_name IN VARCHAR2 DEFAULT NULL,
    new_email IN VARCHAR2 DEFAULT NULL,
    new_department_id IN INT DEFAULT NULL
) IS
BEGIN
    UPDATE teachers
    SET name = COALESCE(new_name, name),
        email = COALESCE(new_email, email),
        department_id = COALESCE(new_department_id, department_id)
    WHERE teacher_id = update_teacher_info.teacher_id;
END;
-------------------------------
BEGIN
    update_teacher_info(
        teacher_id => 1, 
        new_name => 'abdelrahman', 
        new_email => 'abdelrahman@example.com', 
        new_department_id => 2
    );
END;
---------------------------------------
begin 
    update_teacher_info(2,NULL, 'gr@ecample.com');
end;
----------------------------------------
