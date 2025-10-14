program n;
var a,b: integer; c,d,e,f,g:real;
begin
  writeln ('Введите катет и гипотенузу');
  readln (a,b);
  c:=sqrt(b*b-a*a);
  d:=a/b;
  e:=c/b;
  f:=a/c;
  g:=c/a;
  writeln ('sin=',d,' cos=',e,' tg=',f,' ctg=',g);
end.