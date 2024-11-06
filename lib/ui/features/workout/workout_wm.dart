import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/data/models/local/exercise_media/exercise_media.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/data/models/local/prepared_workout/prepared_workout.dart';
import 'package:gym_application/ui/features/workout/workout_model.dart';
import 'package:gym_application/ui/features/workout/workout_screen.dart';

abstract interface class IWorkoutScreenWidgetModel implements IWidgetModel {
  ValueNotifier<EntityState<List<MuscleGroup>>> get muscleGroupListListenable;

  ValueNotifier<EntityState<PreparedWorkout>> get workoutListenable;

  ValueNotifier<EntityState<List<Exercise>>> get exerciseListListenable;

  void onFavoriteTap();

  void onExerciseTap();

  void onDecreaseTap(ValueNotifier<int> repetitionsNotifier);

  void onIncreaseTap(ValueNotifier<int> repetitionsNotifier);

  void onStartTap();
}

WorkoutScreenWidgetModel defaultWorkoutScreenWidgetModelFactory(
    BuildContext context) {
  return WorkoutScreenWidgetModel(
    WorkoutScreenModel(),
  );
}

class WorkoutScreenWidgetModel
    extends WidgetModel<WorkoutScreen, IWorkoutScreenModel>
    implements IWorkoutScreenWidgetModel {
  WorkoutScreenWidgetModel(super.model);

  @override
  Future<void> initWidgetModel() async {
    await _initAll();

    super.initWidgetModel();
  }

  Future<void> _initAll() async {
    await Future.wait(
      [
        _initMuscleGroupList(),
        _initWorkout(),
        _initExerciseList(),
      ],
    );
  }

  final _muscleGroupListEntity = EntityStateNotifier<List<MuscleGroup>>();

  @override
  ValueNotifier<EntityState<List<MuscleGroup>>> get muscleGroupListListenable =>
      _muscleGroupListEntity;

  Future<void> _initMuscleGroupList() async {
    _muscleGroupListEntity.loading();

    try {
      await Future.delayed(const Duration(seconds: 2));

      final list = List.generate(
        4,
        (id) => const MuscleGroup(
          id: 1,
          name: "Упражнение",
          imageUrl:
              "https://i.pinimg.com/736x/1f/35/33/1f3533de01539d54bfa720fd0a08d363.jpg",
        ),
      );
      _muscleGroupListEntity.content(list);
    } on Exception {
      _muscleGroupListEntity.error();
      debugPrint('Error');
    }
  }

  final _workoutEntity = EntityStateNotifier<PreparedWorkout>();

  @override
  ValueNotifier<EntityState<PreparedWorkout>> get workoutListenable =>
      _workoutEntity;

  Future<void> _initWorkout() async {
    _workoutEntity.loading();

    try {
      await Future.delayed(const Duration(seconds: 2));

      const workout = PreparedWorkout(
        id: 1,
        name: "Утрення тренировка",
        description: 'Кайфовая треня чтобы кайфануть с утра и растянуться',
        isFav: true,
      );

      _workoutEntity.content(workout);
    } on Exception {
      _workoutEntity.error();
      debugPrint('Error');
    }
  }

  @override
  void onFavoriteTap() {
    // TODO: implement onFavoriteTap
  }

  final _exerciseListEntity = EntityStateNotifier<List<Exercise>>();

  @override
  ValueNotifier<EntityState<List<Exercise>>> get exerciseListListenable =>
      _exerciseListEntity;

  Future<void> _initExerciseList() async {
    _exerciseListEntity.loading();

    try {
      await Future.delayed(const Duration(seconds: 1));

      final list = List.generate(
        8,
        (id) => const Exercise(
          name: "Отжимания",
          imageUrl:
              "https://i.pinimg.com/736x/6b/79/77/6b7977603778238b0316f9529cfa4f8e.jpg",
          description: "Это жесткое упражнение не делай чувак",
          difficulty: "1",
          muscleGroupId: 1,
          exerciseMedia: [
            ExerciseMedia(
              id: 1,
              exerciseId: 1,
              type: "siiiiiiiiiiiii",
              url: "",
            )
          ],
        ),
      );

      _exerciseListEntity.content(list);
    } on Exception {
      _exerciseListEntity.error();
      debugPrint('Error');
    }
  }

  @override
  void onExerciseTap() {
    // TODO: implement onExerciseTap
  }

  @override
  void onDecreaseTap(ValueNotifier<int> repetitionsNotifier) =>
      repetitionsNotifier.value--;

  @override
  void onIncreaseTap(ValueNotifier<int> repetitionsNotifier) =>
      repetitionsNotifier.value++;

  @override
  void onStartTap() {
    // TODO: implement onStartTap
  }
}
