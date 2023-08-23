import 'dart:io';

//leer sueldo de tres empleados y aplicar el 10,12,15%
void main(List<String> args) {
  List e = [1, 2, 3];
  for (var i = 0; i < e.length; i++) {
    stdout.write("escriba el sueldo del empleado ${e[i]}::: ");
    String imput = stdin.readLineSync().toString();

    int num = int.parse(imput);
    double diez = (10 * num) / 100;
    double doce = (12 * num) / 100;
    double quince = (15 * num) / 100;
    print("aplicando el 10% es ${num + diez}");
    print("aplicando el 12% es ${num + doce}");
    print("aplicando el 15% es ${num + quince}");
  }
}
