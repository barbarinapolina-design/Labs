program z;
var x,b,c: integer; a:real;
begin
  writeln('');
  readln(a,x);
  b:=100;
  c:=0;
  while a<x do
  begin
    a:=a+a*0.1;
    inc(c);
  end;
  writeln('В день пробегает больше х км на ',c,' день');
  while a<b do
  begin
    a:=a+a*0.1;
    inc(c);
  end;
  writeln('Суммарный путь больше 100 км пробегает на ',c,' день');
end.