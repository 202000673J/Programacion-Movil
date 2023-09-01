class cuenta {
  String titular;
  double cantidad;

  cuenta({required this.titular, this.cantidad = 0});
  void ingresar(double cant_ingre) {
    if (cant_ingre > 0) {
      this.cantidad = this.cantidad + cant_ingre;
    }
  }

  void retirar(double cantidad) {
    if (cantidad > 0) {
      if (this.cantidad - cantidad >= 0) {
        this.cantidad -= cantidad;
      } else {
        this.cantidad = 0.0;
      }
    }
  }
}

void main() {
  var miCuenta = cuenta(titular: "robert");
  miCuenta.ingresar(500);
  miCuenta.ingresar(200);
  miCuenta.ingresar(200);
  print(miCuenta.cantidad);
}
