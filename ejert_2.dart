class Persona {
  String nombre;
  int edad;
  String dni;
  String sexo;
  double peso;
  double altura;

  Persona()
      : nombre = "",
        edad = 0,
        dni = "",
        sexo = "H",
        peso = 0.0,
        altura = 0.0;

  Persona.conNombreEdadSexo(this.nombre, this.edad, this.sexo)
      : dni = "",
        peso = 0.0,
        altura = 0.0;

  Persona.conTodo(
      this.nombre, this.edad, this.dni, this.sexo, this.peso, this.altura);

  int calcularIMC() {
    double imc = peso / (altura * altura);

    if (imc < 20) {
      return -1;
    } else if (imc >= 20 && imc <= 25) {
      return 0;
    } else {
      return 1;
    }
  }

  bool esMayorDeEdad() {
    return edad >= 18;
  }

  void comprobarSexo(String sexo) {
    if (sexo == "H" || sexo == "M") {
      this.sexo = sexo;
    } else {
      this.sexo = "H";
    }
  }
}

void main() {
  var persona1 = Persona.conNombreEdadSexo("Juan", 25, "H");
  print("Nombre: ${persona1.nombre}");
  print("Edad: ${persona1.edad}");
  print("Sexo: ${persona1.sexo}");
  print("Mayor de edad: ${persona1.esMayorDeEdad()}");
  print("IMC: ${persona1.calcularIMC()}");

  var persona2 = Persona.conTodo("Ana", 16, "12345678A", "M", 52.5, 1.65);
  print("Nombre: ${persona2.nombre}");
  print("Edad: ${persona2.edad}");
  print("Sexo: ${persona2.sexo}");
  print("Mayor de edad: ${persona2.esMayorDeEdad()}");
  print("IMC: ${persona2.calcularIMC()}");
}
