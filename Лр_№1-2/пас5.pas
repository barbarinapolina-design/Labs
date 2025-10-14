program n;
var a,b,c: integer;
begin
  writeln ('Введите вес гантелей');
  readln (a,b,c);
  if (a>b) and (a>c) then if b<c then writeln ('Разница весов: ',a-b)
  else writeln ('Разница весов: ',a-c)
  else if b>c then writeln ('Разница весов: ',b-a)
  else writeln ('Разница весов: ',c-a);
end.