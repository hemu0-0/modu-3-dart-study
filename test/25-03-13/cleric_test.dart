
import 'package:test/test.dart';

void main() {
  test('Cleric Tset'  , {
    //given
      cleric = Cleric(name: '성자');


      // when (실행)
   cleric.selfAid();

   // then 검증
  expect(cleric.hp, equals(50));
  );
}