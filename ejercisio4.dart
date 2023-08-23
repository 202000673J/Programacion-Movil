import 'dart:io';
import 'dart:math';

//calcular el área de un triángulo en función de su semiperímetro
void main(List<String> args) {
  stdout.write("ingrese longitud del lado A :::");
  double LadoA = double.parse(stdin.readLineSync().toString());
  stdout.write("ingrese longitud del lado B :::");
  double LadoB = double.parse(stdin.readLineSync().toString());
  stdout.write("ingrese longitud del lado C :::");
  double LadoC = double.parse(stdin.readLineSync().toString());

  double semiperimetro = (LadoA + LadoB + LadoC) / 2;
  double area = sqrt((semiperimetro - LadoA) *
      (semiperimetro - LadoB) *
      (semiperimetro - LadoC));

  print("el area del triangulo es $area");
}
