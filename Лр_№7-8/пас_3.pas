program zd3;
var a, s: string; i,p: integer;
begin
  writeln('Введите текст: ');
  readln(a);
  p:=0;
  for i:=1 to Length(a)do
  begin
    if (a[i]='a') or (a[i]='b') or (a[i]='c') then p:=p+1
    else break;
  end;
  if p=Length(a) then writeln('Строка содержит только символы "a", "b","c"')
  else writeln('Строка НЕ содержит только символы "a", "b","c"')
end.