program dz3;
var max,min,kol1,kol2: integer;
var i,k:integer;
a:array[1..20] of integer;
begin
  max:=-52;
  min:=65;
  randomize;
  for i:=1 to 20 do
     a[i]:=random(-52,65);
  for i:=1 to 20 do
    begin
    write(a[i]:4);
    if i mod 10 = 0 then writeln;
    end;
  for i:=1 to 20 do
    if a[i]>max then 
      begin
      max:=a[i];
      k:=i;
      end;
      writeln;
  writeln('Наибольший элемент массива = ',max);
  writeln('Его номер в массиве: ',k);
  for i:=1 to 20 do
    if a[i]<min then 
      begin
      min:=a[i];
      k:=i;
      end;
      writeln;
  writeln('Наименьший элемент массива = ',min);
  writeln('Его номер в массиве: ',k);
  writeln;
  for i:=1 to 20 do
    if a[i] mod 5 = 0 then k:=i;
  writeln('Последний номер элемента в массиве, который кратен 5: ',k);
end.