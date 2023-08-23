import 'dart:io';

//hallar el area,longitud del radio de un circulo
void main(List<String> args) {
  stdout.write("ingrese radio del circulo: ");
  double imput = double.parse(stdin.readLineSync().toString());

  double area = 3.14159 * (imput * imput);
  double longitud = (2 * 3.14159) * imput;

  print("el area del circulo es $area");
  print("la longitud del circulo es $longitud");
}
