// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_verification_code_register_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckVerificationCodeRegisterDTOImpl
    _$$CheckVerificationCodeRegisterDTOImplFromJson(
            Map<String, dynamic> json) =>
        _$CheckVerificationCodeRegisterDTOImpl(
          phoneNumber: json['phone_number'] as String,
          password: json['password'] as String,
          verificationCode: json['verification_code'] as String,
          name: json['name'] as String,
          surname: json['surname'] as String,
        );

Map<String, dynamic> _$$CheckVerificationCodeRegisterDTOImplToJson(
        _$CheckVerificationCodeRegisterDTOImpl instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'password': instance.password,
      'verification_code': instance.verificationCode,
      'name': instance.name,
      'surname': instance.surname,
    };
