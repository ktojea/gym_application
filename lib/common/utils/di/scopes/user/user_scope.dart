// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/app_async_dependency.dart';
import 'package:gym_application/common/utils/di/scopes/global/global_scope.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/data/models/local/user/user.dart';
import 'package:gym_application/data/provider/network/user/user_api.dart';
import 'package:gym_application/domain/user/user_repository.dart';
import 'package:provider/provider.dart';

class UserScope extends AppAsyncDependency {
  late final ValueNotifier<User> userNotifier;

  late final UserApi _userApi;

  late final UserRepository userRepository;

  @override
  Future<void> initAsync(BuildContext context) async {
    _initNewToken(context);

    _userApi = UserApi(context.global.dio);

    userRepository = UserRepository(userApi: _userApi);

    await _initUser(context);
  }

  Future<void> _initNewToken(BuildContext context) async {
    final token = await context.global.localStorageRepository.getTokenFromLocalStorage();

    context.global.dio.options.headers = {'Authorization': token};
  }

  Future<void> _initUser(BuildContext context) async {
    try {
      final userProfileResponse = await userRepository.getUserProfile();

      final userIdFromStorage = await context.global.localStorageRepository.getUserIdFromLocalStorage();

      if (userIdFromStorage == null) throw Exception();

      final userId = int.parse(userIdFromStorage);

      final user = User(
        id: userId,
        name: userProfileResponse.name,
        surname: userProfileResponse.surname,
        phoneNumber: userProfileResponse.phoneNumber,
        imageUrl: userProfileResponse.userInfo.imageUrl,
        createdAt: userProfileResponse.createdAt,
        sex: userProfileResponse.userInfo.sex,
        dateOfBirthday: userProfileResponse.userInfo.dateOfBirthday,
        weight: userProfileResponse.userInfo.weight,
        height: userProfileResponse.userInfo.height,
        trainingLevel: userProfileResponse.userInfo.trainingLevel,
        trainingFrequency: userProfileResponse.userInfo.trainingFrequency,
      );

      userNotifier = ValueNotifier<User>(user);
    } on Exception catch (e, stackTrce) {
      context.router.replace(const AuthScopeWrapperRoute());
      debugPrint(e.toString());
      debugPrintStack(stackTrace: stackTrce);
    }
  }
}

extension UserScopeExtension on BuildContext {
  UserScope get userInfo => read<UserScope>();
}
