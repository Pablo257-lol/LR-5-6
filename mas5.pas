program mas5;
const
  N = 10;
var
  a, b: array[1..N] of integer;
  i, s1, s2: integer;
begin
  for i := 1 to N do
    a[i] := random(100)-50;
  for i := 1 to N do
    b[i] := random(100)-50;  
  writeln('Массив a:');
  for i := 1 to N do
    write(a[i], ' ');
  writeln;  
  writeln('Массив b:');
  for i := 1 to N do
    write(b[i], ' ');
  writeln;  
  s1 := 0;
  for i := 1 to N do
    if a[i]>0 then s1 := s1 + a[i];  
  s2 := 0;
  for i := 1 to N do
    if b[i]>0 then s2 := s2 + b[i];  
  if s1<s2 then
    begin
    for i := 1 to N do
      b[i] := b[i] * 10; 
  writeln('Новый массив b:');
  for i := 1 to N do
    write(b[i], ' ');
  end
  else
    begin
    for i := 1 to N do
      a[i] := a[i] * 10; 
  writeln('Новый массив a:');
  for i := 1 to N do
    write(a[i], ' ')
  end;
end.
