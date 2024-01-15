with Ada.Text_IO;
with System.Storage_Elements;

procedure MemLeak is
   type Int_Ptr is access Integer;

   procedure Allocate_Memory is
      Ptr : Int_Ptr;
   begin
      Ptr := new Integer;
      -- Not deallocating Ptr on purpose
   end Allocate_Memory;

begin
   Ada.Text_IO.Put_Line ("Ada Code with Memory Leak");
   Allocate_Memory;
   -- The allocated memory is not deallocated, causing a memory leak
end MemLeak;
