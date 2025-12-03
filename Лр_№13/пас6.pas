var
  a, b: file of real;
  x, t, min, max: real;
  minPos, maxPos, pos, e, n: integer;
begin
  assign(a, 'text5.dat');
  rewrite(a);
  write('Введите количество чисел: '); readln(e);
  for n := 1 to e do
  begin
    write('Введите ',n,'-ое число: ');readln(t);
    write(a, t);
  end;
  close(a);
  
  assign(a, 'text5.dat');
  reset(a);
  min := 1000;
  max := -1000;
  minPos := 0;
  maxPos := 0;
  pos := 1;
  while not eof(a) do
  begin
    read(a, x);
    if x < min then begin min := x; minPos := pos; end;
    if x > max then begin max := x; maxPos := pos; end;
    inc(pos);
  end;

  reset(a);
  assign(b, 'text6.dat');
  rewrite(b);
  pos := 1;
  while not eof(a) do
  begin
    read(a, x);
    if pos = minPos then
      write(b, max)
    else if pos = maxPos then
      write(b, min)
    else
      write(b, x);
    inc(pos);
  end;
  close(a);
  close(b);
  erase(a);
  rename(b, 'text5.dat');
  
  writeln('Min (', min:0:2, ') и Max (', max:0:2, ') поменялись местами:');
  assign(b, 'text5.dat');
  reset(b);
  while not eof(b) do
  begin
    read(b, x);
    write(x,' ');
  end;
end.