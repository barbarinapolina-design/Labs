var
  f: file of real;
  a, b, c: real;
  lm: real;
  pos, mp: integer;
begin
  assign(f, 'text4.dat');
  rewrite(f);
  write(f, 1.5);
  write(f, 2.7);
  write(f, 2.1);
  write(f, 3.0);
  write(f, 2.8);
  write(f, 2.5);
  write(f, 4.0);
  write(f, 3.5); 
  close(f);

  assign(f, 'text4.dat');
  reset(f);
  pos := 1;
  if not eof(f) then
  begin
    read(f, a);
    if not Eof(f) then
    begin
      read(f, b);
      pos := 3;
      while not eof(f) do
      begin
        read(f, c);
        if (b > a) and (b > c) then
        begin
          lm := b;
          mp := pos - 1;
        end;
        a := b;
        b := c;
        pos := pos + 1;
      end;
    end;
  end;
  close(f);
  
  if lm>0 then
    writeln('Последний локальный максимум = ', lm:0:2, ' на позиции ', mp)
  else
    writeln('Нет локальных максимумов');
end.