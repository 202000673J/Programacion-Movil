void main() {
  for (var i = 1; i <= 5; i++) {
    if (i == 3) {
      // Cuando i es igual a 3, se omite esta iteración y se pasa a la siguiente.
      continue;
    }
    print('Iteración $i');
  }
}
