import 'package:modu_3_dart_study/25-03-13/cleric.dart';
import 'package:test/test.dart';

void main() {
  test('Cleric Test' , () {
    final cleric = Cleric('성자', 50, 1);

    int mprecover = cleric.pray(3);

  expect(cleric.mp, equals(mprecover));
 });
}