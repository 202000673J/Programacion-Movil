import 'dart:io';
import 'dart:math';

//calcular la distancia entre dos puntos coordenados conocidos
void main(List<String> args) {
  double x1, x2, y1, y2;
  stdout.write("Ingrese los valores del Punto1::: ");
  x1 = double.parse(stdin.readLineSync().toString());
  y1 = double.parse(stdin.readLineSync().toString());
  stdout.write("Ingrese los valores del Punto2::: ");
  x2 = double.parse(stdin.readLineSync().toString());
  y2 = double.parse(stdin.readLineSync().toString());

  double distancia = sqrt(pow((x2 - x1), 2) + pow((y2 - y1), 2));

  print("la distancia entre los dos puntos es $distancia");
}
