program z;
var a,b,h,x,y:real;
begin
  writeln('Введите a,b,h причём a<b, h>0');
  readln(a,b,h);
  x:=a;
  while x<=b do
  begin
    y:=2*x+1;
    writeln(x, ' | ',y);
    x:=x+h;
  end;
end.