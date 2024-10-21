// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muscle_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MuscleGroupImpl _$$MuscleGroupImplFromJson(Map<String, dynamic> json) =>
    _$MuscleGroupImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$$MuscleGroupImplToJson(_$MuscleGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
    };
