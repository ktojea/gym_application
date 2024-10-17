import 'dart:math';

import 'package:elementary/elementary.dart';

abstract interface class IMyProfileScreenModel extends ElementaryModel {}

class MyProfileScreenModel extends IMyProfileScreenModel {
  MyProfileScreenModel();
}

class User extends IMyProfileScreenModel {
  final String firstName;
  final String lastName;
  final int age;
  final int height;
  final double weight;

  User({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.height,
    required this.weight,
  });

  // Рассчет Индекса Массы Тела
  int get bmi => (weight / pow(height/100, 2)).round();
}
