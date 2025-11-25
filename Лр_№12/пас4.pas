begin
  var f,t: text;
  var K: integer;
  write('Введите номер строки: ');
  readln(K);
  assign(f, 'text4.txt');
  assign(t, 'text5.txt');
  reset(f);
  rewrite(t);
  var i:=1;
  while not eof(f) do
  begin
    if i = K then writeln(t);
    var s: string;
    readln(f, s);
    writeln(t, s);
    i:= i+1;
  end;
    close(f);
    close(t);
    erase(f);
    rename(t, 'text4.txt');
end.