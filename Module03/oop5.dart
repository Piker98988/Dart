import 'dart:io';

class Pair<T> {
  T var0;
  T get first => var0;
  void set first(T x) => var0 = x;
  T var1;
  T get second => var1;
  void set second(T x) => var1 = x;
  Pair(this.var0, this.var1);
  String toString() => "value 1: ${this.var0}; value 2: ${this.var1}";
}

void main() {
  Pair<int> pair1 = Pair(1, 2);
  Pair<int> pair2 = Pair(3, 4);
  Pair<int> pair3 = Pair(5, 6);
  Pair<int> pair4 = Pair(7, 8);

  Pair<String> pairA = Pair("a", "b");
  Pair<String> pairB = Pair("c", "d");
  Pair<String> pairC = Pair("e", "f");
  Pair<String> pairD = Pair("g", "h");

  List<Pair<String>> stringPairs = [pairA, pairB, pairC, pairD];
  List<Pair<int>> intPairs = [pair1, pair2, pair3, pair4];
  List<List> pairs = [intPairs, stringPairs];

  for (List l in pairs) {
    for (Pair i in l) {
      stdout.write("$i\n");
    }
  }
}
