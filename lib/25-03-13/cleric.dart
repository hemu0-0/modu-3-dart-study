class Cleric {
  final int maxhp = 50;
  final int maxmp = 10;

  String name;
  int hp = 50;
  int mp = 10;

  Cleric(this.name, this.hp, this.mp);

  void selfAid () {
    if( mp >= 5) {
      mp -= 5;
      hp = maxhp;
      print('$name 은 마력 5를 소비해 체력을 전부 회복했다.')
    }
  }
}