class Cuenta {
  String nombre;
  String dni;
  double cantidad;

  Cuenta()
      : nombre = "",
        dni = "",
        cantidad = 0.0;

  Cuenta.conParametros(this.nombre, this.dni, this.cantidad);

  void ingreso(double monto) {
    if (monto > 0) {
      cantidad += monto;
    }
  }

  void reintegro(double monto) {
    if (monto > 0 && monto <= cantidad) {
      cantidad -= monto;
    }
  }

  void transferencia(Cuenta cuentaDestino, double monto) {
    if (monto > 0 && monto <= cantidad) {
      cantidad -= monto;
      cuentaDestino.ingreso(monto);
    }
  }

  double get saldo => cantidad;

  set saldo(double nuevoSaldo) {
    if (nuevoSaldo >= 0) {
      cantidad = nuevoSaldo;
    }
  }
}

void main() {
  var cuenta1 = Cuenta.conParametros("Juan Pérez", "12345678A", 1000.0);
  print("Nombre: ${cuenta1.nombre}");
  print("DNI: ${cuenta1.dni}");
  print("Saldo inicial: ${cuenta1.saldo}");

  cuenta1.ingreso(500.0);
  print("Saldo después de ingreso: ${cuenta1.saldo}");

  cuenta1.reintegro(200.0);
  print("Saldo después de reintegro: ${cuenta1.saldo}");

  var cuenta2 = Cuenta.conParametros("Ana Sánchez", "87654321B", 1500.0);
  print("Saldo cuenta 2 antes de transferencia: ${cuenta2.saldo}");
  cuenta1.transferencia(cuenta2, 300.0);
  print("Saldo cuenta 1 después de transferencia: ${cuenta1.saldo}");
  print("Saldo cuenta 2 después de transferencia: ${cuenta2.saldo}");
}
