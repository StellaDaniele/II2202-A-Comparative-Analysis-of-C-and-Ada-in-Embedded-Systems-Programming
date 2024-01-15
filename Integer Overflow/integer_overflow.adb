with Ada.Text_IO;

procedure Overflow_Example is
   X : Integer := Integer'Last;
   Y : Integer := 1;
begin
   X := X + Y;
   Ada.Text_IO.Put_Line ("Value of X: " & Integer'Image (X));
end Overflow_Example;
