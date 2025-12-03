begin
  var a,b: file of char; var c: char; var p,pm: integer;
  assign(a,'text.txt');
  reset(a);
  pm:=-1;
  p:=1;
  write('Изначальная запись: ');
  while not eof(a) do 
  begin
    read(a,c);
    write(c);
    if c=' ' then pm:=p;
    inc(p);
  end;
  reset(a);
  assign(b,'text1.txt');
  rewrite(b);
  p:=1;
  writeln;
  write('Итоговая запись: ');
  while (not eof(a)) and (p<pm) do
  begin
    read(a,c);
    write(b,c);
    write(c);
    inc(p);
  end;
  close(a);
  close(b);
  erase(a);
  rename(b, 'text.txt');
end.