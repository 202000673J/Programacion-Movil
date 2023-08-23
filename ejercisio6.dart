import 'dart:io';

//calcular el ángulo en grados centesimales y radianes si tenemos grados sexagesimales
void main(List<String> args) {
  double centecimales, radianes;
  stdout.write("ingrese  grados sexagesimales:::");
  double input = double.parse(stdin.readLineSync().toString());
  int imput = input.toInt();

  centecimales = imput * 1.11111;
  radianes = imput * (3.14159 / 180);

  print("comvercion de grados sexagesimales a centecimales es $centecimales");
  print("comvercion de grados sexagesimales a radianes es $radianes");
}
