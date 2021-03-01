with Ada.Text_IO;
procedure Main2 is
a : Integer = 0;
b : Integer = 0;
s : String ;
boo : Boolean;
s := "";
boo := TRUE;   
begin   
while a < 10 loop
if a < 5 and boo = TRUE then
s := "Correcto";
Ada.Text_IO.Put_Line(s);
elsif a > 5
s := "Incorrecto";
Ada.Text_IO.Put_Line(s);
boo := FALSE
end if;     
a := a + 1;   
end loop;
end;
end Main2;

