import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required int id,
    required String name,
    required String surname,
    required String phoneNumber,
    required String password,
    required DateTime createdAt,
    required String sex,
    required DateTime dateOfBirthday,
    required double weight,
    required int height,
    required int trainingLevel,
    required int trainingFrequency,
  }) = _User;

  int get age {
    final currentDate = DateTime.now();
    int age = currentDate.year - dateOfBirthday.year;

    if (currentDate.month < dateOfBirthday.month ||
        (currentDate.month == dateOfBirthday.month && currentDate.day < dateOfBirthday.day)) {
      age--;
    }

    return age;
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
