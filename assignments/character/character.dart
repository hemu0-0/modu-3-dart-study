// 추상 클래스 일부가 미 정의인 클래스
import 'slime.dart';

abstract class Character {
  String name;
  int hp;

  Character(this.name, this.hp);

  //추상 메서드
  void attack(Slime slime);
}

class Gunner extends Character {
  Gunner(super.name, super.hp);

  @override
  void attack(slime) {
    // TODO: implement attack
  }
}
