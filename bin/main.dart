// Challenge
// Simplified Fractions
// Create a function that returns the simplified version of a fraction.
/// Examples
//  simplify("4/6") ➞ "2/3"
String simplify(String fraction) {
  int num = int.parse(fraction.substring(0, fraction.indexOf('/')));
  int den =
      int.parse(fraction.substring(fraction.indexOf('/') + 1, fraction.length));
  List numFactors = factors(num);
  List denFactors = factors(den);
  List commonNumbers =
      numFactors.where((item) => denFactors.contains(item)).toList();
  int productOfCommonNumbers =
      commonNumbers.reduce((curr, next) => curr * next);
  return '${num ~/ productOfCommonNumbers}/${den ~/ productOfCommonNumbers}';
}

List factors(int n) {
  List factorsList = [];
  for (int i = 1; i <= n; i++) {
    n % i == 0 ? factorsList.add(i) : null;
  }
  return factorsList;
}

main() {
  String x = '4/6';
  print(x.substring(x.indexOf('/') + 1, x.length));
  print(factors(6));
//  List a = [2];
//  List b = [2, 3];
//  List c = a.where((item) => !b.contains(item)).toList();
//  print(c);
  print(simplify('2/2'));
}
