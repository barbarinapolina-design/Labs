Begin
  var s: string;
  write('Введите строку s: ');
  readln(s);
  var a: text;
  assign(a,'text3.txt');
  append(a);
  writeln(a,s);
  close(a);
end.