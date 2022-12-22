Program dkr3;
 
uses crt; 
var num:integer;
function f(x: real):real := 2*x*x*x-2*x*x+2*x+10; //сама функция
    
function fb(x: real):real := (x*x*x*x/2)-(2*x*x*x/3)+(x*x)+(10*x); //производная
 
procedure proc1;
  begin
    var a := ReadLnReal('Введите нижний предел интегрирования:'); 
    var b := ReadLnReal('Введите верхний предел интегрирования:');
    var n := ReadLnInteger('Введите количество отрезков:');
    var h := (b - a) / n; //дальше по методу правых прямоугольников
    var s := 0.0; 
    for var i := 1 to n do s += f(a + i * h) * h;
    var s1 := fb(b) - fb(a);
    var pg := abs(s1 - s);
    writeln('Приближённое значение равно ', s); 
    writeln('Погрешность равна ', pg);
  end;
   
begin
  writeln('Программа вычисления площади фигуры, ограниченной кривой'); 
  writeln('2*x^3+(-2)*x^2+(2)*x+(10) и осью Ox'); 
  writeln('1 - узнать первообразную этой функции'); 
  writeln('2 - приближенное значение интеграла'); 
  writeln('3 - выход из программы'); 
  repeat
    read(num);
    case num of
      1:writeln('x^4/2-2x^3/3+x^2');
      2:proc1
    end;
   until num=3;
    end.