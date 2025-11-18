uses GraphABC;
var x, y, a, b: integer;
begin
  x:=40;
  a:=300;
  b:=300;
  y:=a;
  while y > 100 do
  begin
    setpencolor(clwhite);
    setbrushcolor(clwhite);
    rectangle(x-1, y-1, x+20, y+20);
    setpencolor(clblack);
    setbrushcolor(clblack);
    rectangle(x, y, x+19, y+19);
    x:= x + 1;
    y:= y - 1;
  end;
  while y < b do
  begin
    setpencolor(clwhite);
    setbrushcolor(clwhite);
    rectangle(x-1, y-1, x+20, y+20);
    setpencolor(clblack);
    setbrushcolor(clblack);
    rectangle(x, y, x+19, y+19);
    x:= x + 1;
    y:= y + 1;
  end;
end.