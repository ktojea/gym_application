// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muscle_group_level_lists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MuscleGroupLevelListsImpl _$$MuscleGroupLevelListsImplFromJson(
        Map<String, dynamic> json) =>
    _$MuscleGroupLevelListsImpl(
      beginnerList: (json['beginner_list'] as List<dynamic>)
          .map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
      experiencedList: (json['experienced_list'] as List<dynamic>)
          .map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
      professional: (json['professional'] as List<dynamic>)
          .map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MuscleGroupLevelListsImplToJson(
        _$MuscleGroupLevelListsImpl instance) =>
    <String, dynamic>{
      'beginner_list': instance.beginnerList.map((e) => e.toJson()).toList(),
      'experienced_list':
          instance.experiencedList.map((e) => e.toJson()).toList(),
      'professional': instance.professional.map((e) => e.toJson()).toList(),
    };
