with Ada.Text_IO;

procedure RaceCondition is
   type Counter_Type is new Integer;

   protected Shared_Counter_Protected is
      entry Increment_Counter;
      function Get_Counter return Counter_Type;
   private
      Counter : Counter_Type := 0;
   end Shared_Counter_Protected;

   protected body Shared_Counter_Protected is
      entry Increment_Counter when True is
      begin
         Counter := Counter + 1;
      end Increment_Counter;

      function Get_Counter return Counter_Type is
      begin
         return Counter;
      end Get_Counter;
   end Shared_Counter_Protected;

   task type Increment_Task;

   task body Increment_Task is
   begin
      for I in 1 .. 10_000 loop
         Shared_Counter_Protected.Increment_Counter;
      end loop;
   end Increment_Task;

   Threads : array (1 .. 10) of Increment_Task;

begin
   for T in Threads'Range loop
      null;
   end loop;

   for T in Threads'Range loop
      null;
   end loop;
   delay 5.0;
   Ada.Text_IO.Put_Line
     ("Final value of the shared counter: " &
      Shared_Counter_Protected.Get_Counter'Image);
end RaceCondition;
