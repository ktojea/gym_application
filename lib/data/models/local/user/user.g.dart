// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      surname: json['surname'] as String,
      phoneNumber: json['phoneNumber'] as String,
      password: json['password'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      sex: json['sex'] as String,
      dateOfBirthday: DateTime.parse(json['dateOfBirthday'] as String),
      weight: (json['weight'] as num).toDouble(),
      height: (json['height'] as num).toInt(),
      trainingLevel: (json['trainingLevel'] as num).toInt(),
      trainingFrequency: (json['trainingFrequency'] as num).toInt(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'createdAt': instance.createdAt.toIso8601String(),
      'sex': instance.sex,
      'dateOfBirthday': instance.dateOfBirthday.toIso8601String(),
      'weight': instance.weight,
      'height': instance.height,
      'trainingLevel': instance.trainingLevel,
      'trainingFrequency': instance.trainingFrequency,
    };
