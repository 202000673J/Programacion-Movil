class Persona {
  String nombre;
  int edad;
  String dni;

  Persona(this.nombre, this.edad, this.dni);

  set setNombre(String nuevoNombre) {
    nombre = nuevoNombre;
  }

  String get getNombre => nombre;

  set setEdad(int nuevaEdad) {
    edad = nuevaEdad;
  }

  int get getEdad => edad;

  set setDNI(String nuevoDNI) {
    dni = nuevoDNI;
  }

  String get getDNI => dni;

  void mostrar() {
    print('Nombre: $nombre');
    print('Edad: $edad');
    print('DNI: $dni');
  }

  bool esMayorDeEdad() {
    return edad >= 18;
  }
}

void main() {
  var persona = Persona("Juan Pérez", 25, "12345678A");

  persona.mostrar();

  if (persona.esMayorDeEdad()) {
    print('Es mayor de edad.');
  } else {
    print('No es mayor de edad.');
  }

  persona.setNombre = "María García";
  persona.setEdad = 17;
  persona.setDNI = "87654321B";

  persona.mostrar();
}
