// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      surname: json['surname'] as String,
      phoneNumber: json['phone_number'] as String,
      password: json['password'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      sex: json['sex'] as String,
      dateOfBirthday: DateTime.parse(json['date_of_birthday'] as String),
      weight: (json['weight'] as num).toDouble(),
      height: (json['height'] as num).toInt(),
      trainingLevel: (json['training_level'] as num).toInt(),
      trainingFrequency: (json['training_frequency'] as num).toInt(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'phone_number': instance.phoneNumber,
      'password': instance.password,
      'created_at': instance.createdAt.toIso8601String(),
      'sex': instance.sex,
      'date_of_birthday': instance.dateOfBirthday.toIso8601String(),
      'weight': instance.weight,
      'height': instance.height,
      'training_level': instance.trainingLevel,
      'training_frequency': instance.trainingFrequency,
    };
