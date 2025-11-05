var N, x, k: integer;
begin
  write('Введите N: ');
    readln(N);
    x:=1;
    k:=0;
    while x<=N do
    begin
      if N mod x=0 then 
        k:=k+1;
      x:=x+1;
    end;
    writeln('Количество делителей: ',k);
end.