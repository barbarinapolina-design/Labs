var N, P, a: integer;
  begin
    write('Введите N: ');
    readln(N);
    P:=1;
    if N=0 then P:=0;
    while N<>0 do
      begin
      a:=N mod 10;
      P:=P*a;
      N:=N div 10
      end;
      writeln('Произведений цифр: ',P);
  end.