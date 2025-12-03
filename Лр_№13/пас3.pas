var a, b, c: text;
    x: real;
    n,e: integer;
begin
  assign(a, 'text2.txt');
  rewrite(a);
  write('Введите количество чисел: '); readln(e);
  for n := 1 to e do
  begin
    x := n * 1.1;
    writeln(a, x:0:1, ' ');
  end;
  close(a);

  assign(a, 'text2.txt');
  reset(a);
  assign(b, 'text2.1.txt');
  rewrite(b);
  assign(c, 'text2.2.txt');
  rewrite(c);
  n := 1;
  while not eof(a) do
  begin
    readln(a, x);
    if n mod 2 = 1 then
      writeln(b, x:0:1, ' ')
    else
      writeln(c, x:0:1, ' ');
    n := n + 1;
  end;
  close(a);
  close(b);
  close(c);
end.