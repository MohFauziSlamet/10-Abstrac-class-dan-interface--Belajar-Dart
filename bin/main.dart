import 'dart:io';
import 'package:Inheritance/flying_monster.dart';
import 'package:Inheritance/hero.dart';
import 'package:Inheritance/monster.dart';
import 'package:Inheritance/monster_ubur_ubur.dart';
import 'package:Inheritance/monster_kecoa.dart';
import 'package:Inheritance/monster_ucoa.dart';

void main(List<String> arguments) async {
  Hero layla = Hero();
  MonsterKecoa kecoa = MonsterKecoa();
  MonsterUburUbur uburUbur = MonsterUburUbur();
  MonsterUburUbur ucoa = MonsterUburUbur();

  //meminta inputan healtPoint untuk hero dan monster
  stdout.write('Masukan HealtPoint layla : ');
  layla.healtPoint = int.tryParse(stdin.readLineSync());
  stdout.write('Masukan HealtPoint kecoa : ');
  kecoa.healtPoint = int.tryParse(stdin.readLineSync());
  stdout.write('Masukan healtPoint uburUbur : ');
  uburUbur.healtPoint = int.tryParse(stdin.readLineSync());
  stdout.write('Masukan healtPoint monsterUcoa : ');
  ucoa.healtPoint = int.tryParse(stdin.readLineSync());
  print('\n');

  print('healtPoint lalya : ' + layla.healtPoint.toString());
  print('healtPoint kecoa : ' + kecoa.healtPoint.toString());
  print('healtPoint uburUbur : ' + uburUbur.healtPoint.toString());
  print('healPoint monster ucoa : ' + ucoa.healtPoint.toString());
  print('\n');

  print('------------------------------------------');
  print('hero layla membunuh monters : ' + layla.killAMonster());
  print('Monster Kecoa Fly : ' + kecoa.fly());
  print('Monster uburUbur Berenang: ' + uburUbur.swim());
  print('Monster kecoa membunuh hero : ' + kecoa.eatHuman);
  print('Monster uburUbur membunuh hero : ' + uburUbur.eatHuman);
  print('\n');

  print('------------------------------------------');

  //class juga dapat dijadikan sebuah list
  List<Monster> kumpulanMonsters = [];
  kumpulanMonsters.add(MonsterKecoa());
  kumpulanMonsters.add(MonsterKecoa());
  kumpulanMonsters.add(MonsterUburUbur());
  kumpulanMonsters.add(MonsterUcoa());

  print('Perintah untuk Kumpulan monster yang bisa berenang');
  for (Monster uburUbur in kumpulanMonsters) {
    if (uburUbur is MonsterUburUbur) {
      print(uburUbur.swim());
    }
    //is adalah penunjuk bahwa apakah uburUbur adl objek MonsterUburUbur
  }
  print((uburUbur as MonsterUburUbur).swim());
  // as adl penujuk bahwa uburUbur merupakan jenis monterUbuUbur
  print('\n');

  print('---------------------------------------------');
  print('Perintah move untuk Kumpulan monster yang telah di override');
  for (Monster m in kumpulanMonsters) {
    print(m.move());
  }
  print('\n');

  print('---------------------------------------------');
  print('Perintah fly untuk Kumpulan monster yang bisa terbang');
  for (Monster m in kumpulanMonsters) {
    if (m is FlyingMonster) {
      print((m as FlyingMonster).fly());
    }
  }
  print('\n');

  print('=============================================');
  print(MonsterKecoa().fly());
  print(MonsterKecoa().move());
  print(MonsterUburUbur().move());
  print(MonsterUcoa().move());
  print(MonsterUcoa().fly());
  print(MonsterUcoa().swim());
  print(MonsterUcoa().eatHuman);
  print(MonsterUburUbur().eatHuman);
}
 /* interface hampir sama dengan abstract class , namun yang membedakan nya ,
  interface merupakan template yang berisi methode yang berfungsi sbg implement saja
  bukan u dijadikan sebuah turunan dari class . bisa dibilang kumpulan suatu skill skiill .
  (kumplulan kumpulan methode yang harus di miliki oleh class yang mengimplemen
  dari interface)
   */
  /*
sebuah objek hanya bisa memiliki satu parent dari satu class (extends),
namun dapat memiliki interface dari banyak class (implement). pada
Dart , interface == abstract class . tidak dapat dijadikan sbg parent .
 */