// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/app_async_dependency.dart';
import 'package:gym_application/common/utils/di/scopes/global/global_scope.dart';
import 'package:gym_application/data/models/local/user/user.dart';
import 'package:gym_application/data/provider/network/ai/ai_api.dart';
import 'package:gym_application/data/provider/network/equipment/equipment_api.dart';
import 'package:gym_application/data/provider/network/exercise/exercise_api.dart';
import 'package:gym_application/data/provider/network/muscle_group/muscle_group.dart';
import 'package:gym_application/data/provider/network/user/user_api.dart';
import 'package:gym_application/data/provider/network/workouts/workouts_api.dart';
import 'package:gym_application/domain/ai/ai_repository.dart';
import 'package:gym_application/domain/equipment/equipment_repository.dart';
import 'package:gym_application/domain/exercise/exercise_repository.dart';
import 'package:gym_application/domain/muscle_group/muscle_group_repository.dart';
import 'package:gym_application/domain/prepared_workout/prepared_workout_repository.dart';
import 'package:gym_application/domain/user/user_repository.dart';
import 'package:provider/provider.dart';

class UserScope extends AppAsyncDependency {
  late final ValueNotifier<User> userNotifier;

  late final UserApi _userApi;

  late final UserRepository userRepository;

  late final MuscleGroupApi _muscleGroupApi;

  late final MuscleGroupRepository muscleGroupRepository;

  late final ExerciseApi _exerciseApi;

  late final ExerciseRepository exerciseRepository;

  late final EquipmentApi _equipmentApi;

  late final EquipmentRepository equipmentRepository;

  late final AiApi _aiApi;

  late final AiRepository aiRepository;

  late final WorkoutsApi _workoutsApi;

  late final WorkoutsRepository workoutsRepository;

  @override
  Future<void> initAsync(BuildContext context) async {
    await _initNewToken(context);

    _userApi = UserApi(context.global.dio);

    userRepository = UserRepository(userApi: _userApi);

    await _initUser(context);

    _muscleGroupApi = MuscleGroupApi(context.global.dio);

    muscleGroupRepository = MuscleGroupRepository(muscleGroupApi: _muscleGroupApi);

    _exerciseApi = ExerciseApi(context.global.dio);

    exerciseRepository = ExerciseRepository(exerciseApi: _exerciseApi);

    _equipmentApi = EquipmentApi(context.global.dio);

    equipmentRepository = EquipmentRepository(equipmentApi: _equipmentApi);

    _aiApi = AiApi(context.global.dio);

    aiRepository = AiRepository(aiApi: _aiApi);

    _workoutsApi = WorkoutsApi(context.global.dio);

    workoutsRepository = WorkoutsRepository(workoutsApi: _workoutsApi);
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
    } on Object catch (e, stackTrce) {
      // context.router.replace(const AuthScopeWrapperRoute());
      showDialog(
          context: context,
          builder: (context) => Material(
                  child: Text(
                e.toString(),
                style: TextStyle(fontSize: 14),
              )));
      debugPrint(e.toString());
      debugPrintStack(stackTrace: stackTrce);
    }
  }
}

extension UserScopeExtension on BuildContext {
  UserScope get userInfo => read<UserScope>();
}
