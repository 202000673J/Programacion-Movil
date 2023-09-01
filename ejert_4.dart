class Contador {
  int contador;

  Contador() : contador = 0;

  Contador.conParametros(this.contador);

  void incrementar() {
    contador++;
  }

  void decrementar() {
    contador--;
  }

  int get valor => contador;

  set valor(int nuevoValor) {
    contador = nuevoValor;
  }
}

void main() {
  var miContador = Contador();
  print("Valor del contador: ${miContador.valor}");

  miContador.incrementar();
  print("Valor del contador después de incrementar: ${miContador.valor}");

  miContador.decrementar();
  print("Valor del contador después de decrementar: ${miContador.valor}");

  var otroContador = Contador.conParametros(10);
  print("Valor del otro contador: ${otroContador.valor}");
}
