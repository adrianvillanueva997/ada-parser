with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
c1 : Character;
v1 : Integer = 0;
v2 : Integer = 4.5;
counter : Integer = 10;
begin
for I in 1..counter loop
if v1 = v2 then
c1 := 'a';
Ada.Text_IO.Put(c1);
else
c1 := 'bb';
Ada.Text_IO.Put(c1);
end if;
v1 = v1 + 0.5;
end loop;
end Main;

