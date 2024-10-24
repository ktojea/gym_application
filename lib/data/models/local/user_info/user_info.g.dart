// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      sex: json['sex'] as String,
      dateOfBirthday: DateTime.parse(json['date_of_birthday'] as String),
      imageUrl: json['image_url'] as String?,
      weight: (json['weight'] as num).toDouble(),
      height: (json['height'] as num).toInt(),
      trainingLevel: json['training_level'] as String,
      trainingFrequency: (json['training_frequency'] as num).toInt(),
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'sex': instance.sex,
      'date_of_birthday': instance.dateOfBirthday.toIso8601String(),
      'image_url': instance.imageUrl,
      'weight': instance.weight,
      'height': instance.height,
      'training_level': instance.trainingLevel,
      'training_frequency': instance.trainingFrequency,
    };
