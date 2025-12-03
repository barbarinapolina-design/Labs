var a: file of real;
    b: char;
    c: real;
    i,n,e: integer;
Begin
  assign(a, 'text3.txt');
  rewrite(a);
  write('Введите количество чисел: '); readln(e);
  for n := 1 to e do
  begin
    b := n * 1.1;
    write(a, b:0:1, ' ');
  end;
  close(a);
  
  assign(a, 'text3.txt');
  reset(a);
  c := 0;
  i := 1;
  while not eof(a) do
  begin
    read(a,b);
    if i mod 2=0 then c:=c+b;
    inc(i);
  end;
  close(a);
  writeln('Сумма = ', c:0:2);
end.