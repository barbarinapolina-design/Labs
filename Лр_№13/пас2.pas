var
  a,b: text;
  s: array[1..100] of string;
  max, i, c, e: integer;
begin
  assign(a, 'input.txt');
  reset(a);
  e := 0;
  max := 0;
  while not Eof(a) do
  begin
    e := e + 1;
    readln(f1, s[e]);
    if length(s[e]) > max then
      max := length(s[e]);
  end;
  close(a);
  
  assign(b, 'output.txt');
  rewrite(b);
  c := 0;
  for i := e downto 1 do
  begin
    if length(s[i]) = max then
    begin
      writeln(f2, s[i]);
      c:= c + 1;
    end;
  end;
  Close(b);
 
  writeln('Найдено ',c, ' строк длиной ', max);
end.