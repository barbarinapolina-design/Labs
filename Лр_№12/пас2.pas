begin
  var N,K: integer;
  write('Введите N: ');
  readln(N);
  write('Введите K: ');
  readln(K);
  var a: text;
  assign(a,'text2.txt');
  rewrite(a);
  for var i:=1 to N do
  begin
    for var j:=1 to K do 
      write(a, '* ');
    writeln(a);
  end;
  close(a);
end.