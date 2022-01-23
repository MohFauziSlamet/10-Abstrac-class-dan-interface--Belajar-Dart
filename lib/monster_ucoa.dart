import 'package:Inheritance/flying_monster.dart';
import 'package:Inheritance/monster_ubur_ubur.dart';

class MonsterUcoa extends MonsterUburUbur implements FlyingMonster {
  @override
  String fly() {
    // ignore: todo
    // TODO: implement fly
    return 'Terbang terbang berenang renang';
  }

  @override
  // ignore: todo
  // TODO: implement eatHuman
  String get eatHuman => 'Hmm nyamyammm';
}
