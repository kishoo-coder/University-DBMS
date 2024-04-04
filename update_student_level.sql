-- update student_level
CREATE OR REPLACE PROCEDURE update_student_level IS
BEGIN
    UPDATE students s
    SET s.student_level =
        CASE
            WHEN s.hours_finished >= 30 THEN 4
            WHEN s.hours_finished >= 20 THEN 3
            WHEN s.hours_finished >= 10 THEN 2
            ELSE 1
        END;
END;

-- calling

BEGIN
    update_student_level;
END;
