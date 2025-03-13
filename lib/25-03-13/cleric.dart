import 'dart:math';

class Cleric {
  final int maxhp = 50;
  final int maxmp = 10;

  String name;
  int hp = 50;
  int mp = 10;

  Cleric(this.name, this.hp, this.mp);

  get mprecover => null;

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxhp;
      print('$name 은 마력 5를 소비해 체력을 전부 회복했다.');
    }
  }

  int pray(int praytime) {

    int mprecover = Random().nextInt(3) + praytime;
    if (mp + mprecover > maxmp) {
      mprecover = maxmp - mp;
    }
      mp += mprecover;
      print('$name가 기도를 통해 $mprecover 마력을 회복했다.');
      print('$name의 마력이 $mp가 되었다.');
      return mprecover;
    }
  }

