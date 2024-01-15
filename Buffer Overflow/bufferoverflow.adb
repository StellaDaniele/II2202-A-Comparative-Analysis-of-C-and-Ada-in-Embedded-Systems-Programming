with Ada.Text_IO;

procedure Buffer_Overflow is
   Buffer : String (1 .. 10);
begin
   Buffer := "This is a buffer overflow!";
   Ada.Text_IO.Put_Line (Buffer);
end Buffer_Overflow;
