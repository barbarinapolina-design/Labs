begin
  var f, t: text;
  var n, sum, p, i, x: integer;
  assign(f, 'z3.in.txt');
  reset(f);
  read(f, n);
  close(f);

  sum:= 0;
  p:= 2;
  while p*p*p*p <= n do
  begin
    i:= 2;
    while i*i <= p do
    begin
      if p mod i = 0 then
      begin
        i:= 0;
        break;
      end;
      i:= i + 1;
    end;
    if i <> 0 then 
    begin
      x:= p*p*p*p;
      sum:= sum + x;
    end;

    if p = 2 then
      p:= 3
    else
      p:= p + 2;
  end;
  
  assign(t, 'z3.out.txt');
  rewrite(t);
  write(t, sum);
  close(t);
end.