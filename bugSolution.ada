```ada
function Add_Numbers (A, B : Integer) return Integer is
   Result : Integer;
begin
   if A > Integer'Last - B then
      raise Constraint_Error with "Integer overflow";
   else
      Result := A + B;
   end if;
   return Result;
end Add_Numbers;

procedure Main is
   X : Integer := 10;
   Y : Integer := 5;
   Z : Integer;
begin
   Z := Add_Numbers(X, Y);
   Ada.Text_IO.Put_Line("Sum: " & Integer'Image(Z));
   
   --Demonstrate overflow
   X := Integer'Last -2;
   Y := 5;
   begin
       Z := Add_Numbers(X, Y);
       Ada.Text_IO.Put_Line("Sum: " & Integer'Image(Z));
   exception
      when Constraint_Error =>
          Ada.Text_IO.Put_Line("Integer overflow occurred");
   end;

end Main;
```