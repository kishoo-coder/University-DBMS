-- trigger to update hours_finished if there is any added or deleted or updated student
CREATE OR REPLACE TRIGGER CASESTUDY.Update_hours_finished_Trigger
after delete or insert or update of grade ON CASESTUDY.GRADES 
begin
    UPDATE_HOURS_FINISHED; 
end;
-- trigger to update gpa if there is any added or deleted or updated student
create or replace trigger Update_GPA_Trigger
after delete or insert or update of grade on Grades
begin
    update_GPA2; 
end;
