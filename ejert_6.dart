class Persona {
  String nombre;
  int edad;
  String dni;

  Persona(this.nombre, this.edad, this.dni);
}

class Cuenta {
  Persona titular;
  double cantidad;

  Cuenta({required this.titular, this.cantidad = 0.0});

  String get nombreTitular => titular?.nombre ?? "";

  set setCantidad(double nuevaCantidad) {
    if (nuevaCantidad >= 0) {
      cantidad = nuevaCantidad;
    }
  }

  double get getCantidad => cantidad;

  void mostrar() {
    print('Titular: $nombreTitular');
    print('Cantidad en la cuenta: $cantidad');
  }

  void ingresar(double cantidad) {
    if (cantidad > 0) {
      cantidad += cantidad;
    }
  }

  void retirar(double cantidad) {
    if (cantidad > 0) {
      cantidad -= cantidad;
    }
  }
}

void main() {
  var titular = Persona("Juan Pérez", 25, "12345678A");
  var cuenta = Cuenta(titular: titular, cantidad: 1000.0);

  cuenta.mostrar();

  cuenta.ingresar(500.0);
  cuenta.retirar(200.0);

  cuenta.mostrar();
}
