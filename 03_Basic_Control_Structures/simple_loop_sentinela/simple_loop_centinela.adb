with Ada.Text_IO;

procedure infinite_loop is 
    iter : Integer := 0;
begin
    loop 
        Ada.Text_IO.Put_Line("Inside of the infinite loop!"); 
        delay 0.5; 
        iter:= iter + 1; 
        exit when iter = 5;
    end loop;
end infinite_loop;
