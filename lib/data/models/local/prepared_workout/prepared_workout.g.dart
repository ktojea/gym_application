// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prepared_workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreparedWorkoutImpl _$$PreparedWorkoutImplFromJson(
        Map<String, dynamic> json) =>
    _$PreparedWorkoutImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      isFav: json['is_fav'] as bool,
    );

Map<String, dynamic> _$$PreparedWorkoutImplToJson(
        _$PreparedWorkoutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'is_fav': instance.isFav,
    };
