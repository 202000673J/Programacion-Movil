// Definición de la clase
class Persona {
  // Variables miembro (campos)
  String nombre;
  int edad;

  // Constructor
  Persona(this.nombre, this.edad);

  // Método
  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad años.');
  }
}

void main() {
  // Crear una instancia de la clase Persona
  var persona = Persona('Juan', 30);

  // Llamar al método saludar
  persona.saludar();
}
