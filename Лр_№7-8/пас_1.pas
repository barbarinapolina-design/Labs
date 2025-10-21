program zd1;
var a : string; i, b : integer;
begin
  writeln('Введите текст: ');
  readln(a);
  for i:=3 to Length(a) do
  begin
    writeln(a[i]);
  end;
end.