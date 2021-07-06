import 'dart:math';

void main() {
  var ans = demo(5, 2, 4, 6); // expected ans is 10
  print(ans.runtimeType);
  print(ans);
}

int? demo(int x, int y1, int y2, int y3) {
  var y;
  int a = y1; // first term
  // checks if sequence is AP or GP
  if (y2 - y1 == y3 - y2) {
    // AP
    // d; common difference
    int d = y2 - y1;
    // Tn = a + (n - 1) * d
    y = a + (x - 1) * d;
  } else if (y2 - y1 != y3 - y2) {
    // GP
    // r; common ratio
    var r = y2 / y1;
    // Tn = a * pow(r, n - 1)
    x = x - 1;
    y = a * pow(r, x).toInt(); // converts num to int
  } else {
    // no relationship
  }
  return y;
}
