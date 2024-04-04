-- trigger to update gpa if there is any added or deleted or updated student
create or replace trigger Update_GPA_Trigger
after delete or insert or update of grade on Grades
begin
    update_GPA2; 
end;
