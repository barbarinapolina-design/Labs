begin
  var a,a2: text; var c: string;
  assign(a,'text6.txt');
  assign(a2,'text7.txt');
  reset(a);
  rewrite(a2);
  while not eof(a) do
  begin
    readln(a,c);
    if c<>'' then writeln(a2,c);
  end;
  close(a);
  close(a2);
  erase(a);
  rename(a2, 'text6.txt');
end.