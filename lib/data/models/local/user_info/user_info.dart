import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
class UserInfo with _$UserInfo {
  const UserInfo._();
  const factory UserInfo({
    required String sex,
    required DateTime dateOfBirthday,
    required String? imageUrl,
    required double weight,
    required int height,
    required String trainingLevel,
    required int trainingFrequency,
  }) = _UserInfo;

  int get age {
    final currentDate = DateTime.now();
    int age = currentDate.year - dateOfBirthday.year;

    if (currentDate.month < dateOfBirthday.month ||
        (currentDate.month == dateOfBirthday.month && currentDate.day < dateOfBirthday.day)) {
      age--;
    }

    return age;
  }

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);
}
