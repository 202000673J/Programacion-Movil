void main(List<String> args) {
  multi(5);
}

void multi(int x) {
  List e = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  for (var i = 0; i < e.length; i++) {
    print(x * i);
  }
}
