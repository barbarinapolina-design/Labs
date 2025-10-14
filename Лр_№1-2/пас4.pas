program n;
var a,b,c: integer;
begin
  writeln ('Введите три натуральных числа');
  readln (a,b,c);
  if (a<(b+c)) and (b<(a+c)) and (c<(a+b)) then writeln ('YES')
  else writeln ('NO');
end.