import 'hero.dart';
import 'wizard.dart';

class GreatWizard extends Wizard {
  GreatWizard(super.name , super.hp , super.mp);
  int mp = 150;

  void superHeal(Hero hero) {
    if (mp >= 50) {
      hero.hp = hero.maxhp;
      mp -= 50;
      print('슈퍼힐을 시전했습니다. 대상 HP: ${hero.hp}');
    } else {
      print('마나가 부족합니다.');
    }
  }
}

void main() {
  Hero hero = Hero('토르', 100);
  GreatWizard greatWizard = GreatWizard('마법사', 100, 150);
  greatWizard.superHeal(hero);
}