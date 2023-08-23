import 'dart:io';

//suma,diferencia,producto de dos numeros
void main(List<String> args) {
  stdout.write("leer numero 1: ");
  double imput = double.parse(stdin.readLineSync().toString());
  stdout.write("leer numero 2: ");
  double input = double.parse(stdin.readLineSync().toString());

  double suma = imput + input;
  double diferencia = imput - input;
  double producto = imput * input;

  print("la suma es $suma");
  print("la diferencia es $diferencia");
  print("el producto es $producto");
}
