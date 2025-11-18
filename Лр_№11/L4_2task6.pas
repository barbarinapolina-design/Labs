uses GraphABC;
var i,j,x1,x2,y1,y2,n: integer; h,x, y: real;
begin
  x1 := 50; y1 := 50;
  x2 := 450; y2 := 450;
  n:=7;
  Rectangle (x1, y1, x2, y2);
  h := (x2 - x1) / (N + 1);
  x := x1 + h;
  y:= y1+h;
  for i:=1 to N do 
    begin
      setbrushcolor(clblack);
      Line(round(x), y1, round(x), y2);
      x := x + h;
    end;
  for i:=1 to N do 
    begin
      Line(x1, round(y), x2,round(y) );
      y:= y + h;
    end;
  for i:=0 to N do 
  begin
    for j:=0 to N do 
    begin
      if (i+j) mod 2=1 then
      begin
        setbrushcolor(clblack);
        rectangle(50 +i*50,50+j*50,50+(i+1)*50,50+(j+1)*50);
      end;
    end;
  end;
end.