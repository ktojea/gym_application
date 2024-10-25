import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/equipment/equipment.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/data/models/local/exercise_media/exercise_media.dart';
import 'package:gym_application/ui/features/equipment/equipment_model.dart';
import 'package:gym_application/ui/features/equipment/equipment_screen.dart';

abstract interface class IEquipmentScreenWidgetModel implements IWidgetModel {
  ValueNotifier<EntityState<Exercise>> get exerciseLisenable;

  ValueNotifier<EntityState<Equipment>> get equipmentListenable;

  ValueNotifier<EntityState<List<ExerciseMedia>>> get exerciseMediaListenable;

  ValueNotifier<EntityState<List<Exercise>>> get exerciseListListenable;
}

EquipmentScreenWidgetModel defaultEquipmentScreenWidgetModelFactory(
    BuildContext context) {
  return EquipmentScreenWidgetModel(
    EquipmentScreenModel(),
  );
}

class EquipmentScreenWidgetModel
    extends WidgetModel<EquipmentScreen, IEquipmentScreenModel>
    implements IEquipmentScreenWidgetModel {
  EquipmentScreenWidgetModel(super.model);

  final _equipmentEntity = EntityStateNotifier<Equipment>();

  @override
  ValueNotifier<EntityState<Equipment>> get equipmentListenable =>
      _equipmentEntity;

  final _exerciseEntity = EntityStateNotifier<Exercise>();

  @override
  ValueNotifier<EntityState<Exercise>> get exerciseLisenable => _exerciseEntity;

  @override
  Future<void> initWidgetModel() async {
    await Future.wait([
      _initExercise(),
      _initEquipment(),
      _initExerciseMediaList(),
    ]);

    super.initWidgetModel();
  }

  Future<void> _initExercise() async {
    _exerciseEntity.loading();

    try {
      await Future.delayed(const Duration(seconds: 1));

      const exercise = Exercise(
        id: 1,
        name: "Отжимания",
        description:
            "Это корчое сложные упражнение где надо делать вон то и это и короче прикинь круто как делать то все это ууу",
        equipmentId: 1,
        muscleGroupId: 1,
        difficulty: 1,
        imageUrl:
            "https://sun9-23.userapi.com/impg/9GSVvVWyB4AkPQp7HeGyHg7BXPpEfN2jBfpoYA/oHdxLPUekyA.jpg?size=1280x720&quality=95&sign=e96d305a21e1ae5e5bebd10702590f44&type=album",
      );

      _exerciseEntity.content(exercise);
    } on Exception {
      _exerciseEntity.error();
      print("Error");
    }
  }

  Future<void> _initEquipment() async {
    _equipmentEntity.loading();

    try {
      await Future.delayed(const Duration(seconds: 1));

      const equipment = Equipment(
        id: 1,
        name: "Коврик",
        imageUrl:
            "https://sv-sport.ru/wp-content/uploads/a/2/6/a26e0e77c6b2b4f8b9522eef2d29075f.jpeg",
      );

      _equipmentEntity.content(equipment);
    } on Exception {
      _equipmentEntity.error();
      print("Error");
    }
  }

  Future<void> _initExerciseMediaList() async {
    _exerciseMediaListEntity.loading();

    try {
      await Future.delayed(const Duration(seconds: 0));

      final list = List.generate(
        2,
        (i) => ExerciseMedia(
          id: i,
          exerciseId: 1,
          type: "Hz",
          url: i == 1
              ? "https://www.picturesanimations.com/s/sport/push_ups_animated.gif"
              : "https://otvet.imgsmail.ru/download/u_563a3e1e748832df5ddc412f70bdf18a_800.gif",
        ),
      );
      _exerciseMediaListEntity.content(list);
    } on Exception {
      _exerciseMediaListEntity.error();
      print("Error");
    }
  }

  final _exerciseMediaListEntity = EntityStateNotifier<List<ExerciseMedia>>();
  @override
  ValueNotifier<EntityState<List<ExerciseMedia>>> get exerciseMediaListenable =>
      _exerciseMediaListEntity;

  final _exerciseListEntity = EntityStateNotifier<List<Exercise>>();

  @override
  ValueNotifier<EntityState<List<Exercise>>> get exerciseListListenable =>
      _exerciseListEntity;

  Future<void> _initExerciseList() async {
    _exerciseListEntity.loading();

    try {
      Future.delayed(const Duration(seconds: 1));

      final list = List.generate(
        12,
        (i) => Exercise(
          id: i,
          name: "Медитация",
          description: "Сидеть и предеть",
          equipmentId: 1,
          muscleGroupId: 1,
          difficulty: 1,
          imageUrl:
              "https://sneg.top/uploads/posts/2023-06/1687811209_sneg-top-p-spokoistvie-avatarka-krasivo-39.jpg",
        ),
      );
      _exerciseListEntity.content(list);
    } on Exception {
      _exerciseListEntity.error();
      debugPrint("Error");
    }
  }
}
