with Ada.Text_IO;
with Ada.Integer_Text_IO;
procedure divide0 is
    Num : Integer;
begin
    Num := 1;
    Num := Num / 0;
    Ada.Text_IO.Put_Line (Integer'Image (Num));
end divide0;
