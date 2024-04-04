-- trigger to check that student enroll in a course in his department
CREATE OR REPLACE TRIGGER CASESTUDY.validate_enrollment_trigger
BEFORE INSERT OR UPDATE ON CASESTUDY.GRADES FOR EACH ROW
DECLARE
    v_department_id course.department_id%TYPE;
    v_department_id_student students.department_id%TYPE;
BEGIN
    SELECT department_id
    INTO v_department_id
    FROM course
    WHERE course_id = :NEW.course_id;

    SELECT department_id
    INTO v_department_id_student
    FROM students
    WHERE student_id = :NEW.student_id;

    IF v_department_id <> v_department_id_student THEN
        RAISE_APPLICATION_ERROR(-20001, 'Invalid enrollment: Student ' || :NEW.student_id || ' is not enrolled in course ' || :NEW.course_id || ' within their department.');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20002, 'Course ' || :NEW.course_id || ' does not exist.');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20003, 'An error occurred: ' || SQLERRM);
END;
