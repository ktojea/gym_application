import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/app_async_dependency.dart';
import 'package:gym_application/data/models/local/user/user.dart';
import 'package:provider/provider.dart';

class UserScope extends AppAsyncDependency {
  late final ValueNotifier<User> userNotifier;

  @override
  Future<void> initAsync(BuildContext context) async {
    await _initUser();
  }

  Future<void> _initUser() async {
    try {
      await Future.delayed(const Duration(seconds: 1));

      final user = User(
        id: 1,
        name: "Инокентий",
        surname: "Абдулов",
        phoneNumber: "+78005553535",
        imageUrl: 'https://img.pikbest.com/png-images/qianku/default-avatar_2406311.png!w700wp',
        createdAt: DateTime(2024, 10, 10),
        sex: "m",
        dateOfBirthday: DateTime(2003, 10, 31),
        weight: 104.3,
        height: 191,
        trainingLevel: 1,
        trainingFrequency: 1,
      );

      userNotifier = ValueNotifier<User>(user);
    } on Exception catch (e, stackTrce) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: stackTrce);
    }
  }
}

extension UserScopeExtension on BuildContext {
  UserScope get userInfo => read<UserScope>();
}
