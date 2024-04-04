-- procedure to update hours_finished
CREATE OR REPLACE PROCEDURE update_hours_finished IS
BEGIN
    UPDATE students s
    SET s.hours_finished = (
        SELECT NVL(SUM(c.hours), 0)
        FROM course c
        JOIN grades g ON c.course_id = g.course_id
        WHERE g.student_id = s.student_id
        AND g.grade >= 60
    );
END;
-- calling Procedure
EXEC update_hours_finished;
