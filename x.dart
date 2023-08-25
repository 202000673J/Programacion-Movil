class cuenta {
  String titular;
  double? cantidad;

  cuenta(this.titular, this.cantidad);
  void ingresar(double cant_ingre) {
    if (cant_ingre > 0) {
      double total = this.cantidad + cant_ingre;
    }
  }
}

void main() {
  // Crear una instancia de la clase Cuenta
  var miCuenta = cuenta("jean", 50);

  // Llamar al método ingresar en la instancia
  miCuenta.ingresar(500.0);
  miCuenta.ingresar(200);

  // Imprimir el saldo después de ingresar
  print('Saldo es ${miCuenta.cantidad}');

  // Llamar al método ingresar nuevamente
  //miCuenta.ingresar(200.0);

  // Imprimir el saldo después de ingresar nuevamente
  //print('Saldo después de ingresar 200: ${miCuenta.cantidad}');
}
