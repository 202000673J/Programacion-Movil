import 'dart:io';

//convercion de grados celsius a Fahrenheit,kelvin
void main(List<String> args) {
  double Fahrenheit, kelvin;
  stdout.write("ingrese temperatura en grados celsius:::");
  double input = double.parse(stdin.readLineSync().toString());
  int imput = input.toInt();

  Fahrenheit = (imput * 9 / 5) + 32;
  kelvin = imput + 273.15;

  print("la convercion de grados celsius a Fahrenheit es $Fahrenheit");
  print("la convercion de grados celsius a kelvin es $kelvin");
}
