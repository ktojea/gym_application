// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      age: (json['age'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toDouble(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'age': instance.age,
      'height': instance.height,
      'weight': instance.weight,
    };
