import 'package:modu_3_dart_study/25-03-13/cleric.dart';
import 'package:test/test.dart';

void main() {
test('Cleric Test' , () {
final cleric = Cleric('성자', 50, 5);

int mprecover = cleric.pray(2);

print('회복된 MP는 $mprecover');
});
}