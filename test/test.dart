import '../bin/main.dart';
import 'package:test/test.dart';

void main() {
  test("test case 1", () {
    expect(simplify('6/4'), '3/2');
    expect(simplify('2/2'), '1/1');
  });
}
