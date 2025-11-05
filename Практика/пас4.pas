var N, i, k, y, c, x: integer;
begin
  write('Введите количество чисел N: ');
  readln(N);
  i:=1;
  k:=0;
  for i:=1 to N do
  begin
    x:=1;
    c:=0;
    write('Введите число №',i,': ');
    readln(y);
    while x<=y do
    begin
      if y mod x=0 then
        c:=c+1;
      x:=x+1
    end;
    if c=2 then k:=k+1;
  end;
  writeln('Количество простых чисел: ',k);
end.