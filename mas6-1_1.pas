program mas6;
var
  a: array [1..10] of integer; // объявление массива из 10 целочисленных элементов
  i, j, k: integer; // объявление переменных i, j, k типа integer
  
Begin
  for i := 1 to 10 do // цикл для ввода значений в массив
    readln(a[i]);
  
  k := 0; // присвоение значения переменной k
  
  for j := 2 to 10 do // цикл для проверки упорядоченности массива
    if a[j] < a[j-1] then // если текущий элемент меньше предыдущего
      k := k + 1; // увеличить счетчик неупорядоченных элементов
  
  if k = 0 then // если счетчик равен 0
    writeln('Массив упорядочен по возрастанию') // вывести сообщение об упорядоченности массива
  else
    writeln('Массив не упорядочен по возрастанию'); // иначе вывести сообщение о неупорядоченности массива
  
End.