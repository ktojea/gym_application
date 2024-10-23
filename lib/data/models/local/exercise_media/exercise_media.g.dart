// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseMediaImpl _$$ExerciseMediaImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseMediaImpl(
      id: (json['id'] as num).toInt(),
      exerciseId: (json['exercise_id'] as num).toInt(),
      type: json['type'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ExerciseMediaImplToJson(_$ExerciseMediaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'exercise_id': instance.exerciseId,
      'type': instance.type,
      'url': instance.url,
    };
