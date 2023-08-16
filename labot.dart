// A function declaration.
int y(int x) {
  return x * 2;
}

// Arrow syntax is shorthand for `{ return expr; }`.
int z(int x) => y(y(x));

// Functions are objects.
int w(int x, int Function(int) f) {
  for (var i = 0; i < 2; i++) {
    x = f(x);
  }
  return x;
}

void main() {
  print('4 times two is ${y(4)}');
  print('4 times four is ${z(4)}');
  print('2 x 2 x 2 is ${w(2, y)}');
}
