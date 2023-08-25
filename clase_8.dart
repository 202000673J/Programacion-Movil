void main(List<String> args) {
  //multi(9);
  String? nombre;
  print(nombre);

  int? y;
  int w = y! + 5;
  print(w);

  String? apell;
  String apellformat = apell ?? "buleje";
  print(apellformat);
}

void multi(int x) {
  List e = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  for (var i = 0; i < e.length; i++) {
    print("$x * ${e[i]} = ${x * i}");
  }
}
