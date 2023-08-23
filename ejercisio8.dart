import 'dart:io';

//convercion de cantidad de segundos a horas,minutos,segundos
void main(List<String> args) {
  stdout.write("ingrese una cantidad en segundos:::");
  int input = int.parse(stdin.readLineSync().toString());

  double horas = input / 3600;
  horas.toInt();
  double minutos = (input % 3600) / 60;
  minutos.toInt();
  int segundos = (input % 3600) % 60;

  print("$horas hrs $minutos min $segundos seg");
}
