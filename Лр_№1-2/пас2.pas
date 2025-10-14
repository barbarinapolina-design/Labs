program n;
var a,b,c,d: integer;
begin
  writeln ('Введите трёхзначное число');
  readln (a);
  b:=a mod 10;
  c:=a div 100;
  d:=(a mod 100) div 10;
  write (b,d,c);
end.