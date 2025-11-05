var N, x, s: integer;
begin
  write('Введите N: ');
  readln(N);
  x:=1;
  s:=0;
  while x<=N div 2 do
  begin
    if N mod x=0 then
      s:=s+x;
    x:=x+1;
  end;
  if s=N then writeln('Да')
  else writeln('Нет')
end.