with Ada.Text_IO;

procedure Null_Pointer_Dereference is
   type Integer_Ptr is access Integer;
   P : Integer_Ptr := null;

begin
   Ada.Text_IO.Put_Line ("Attempting to dereference a null pointer...");
   Ada.Text_IO.Put_Line (Integer'Image (P.all));

end Null_Pointer_Dereference;
