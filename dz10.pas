var i,f,b,k,h,min,n:integer;
a:array[-1000..1000] of integer;
begin
  write('Начало диапозона: ');
  read(f);
  write('Конец диапозона: ');
  readln(b);
  min:=b;
  h:=f;
  randomize;
  for i:=1 to 20 do
    a[i]:=random(f,b);
  for i:=1 to 20 do
    begin
    write(a[i]:4);
    if i mod 10 = 0 then writeln;
    end;
    writeln;
    
    k:=0;
    for i:=1 to 20 do
      if a[i]>0 then
      begin
        k:=k+1;
        h:=i;
    begin
    write(a[i]:4);
    if h mod 10 = 0 then writeln;
    end;
    end;
end.