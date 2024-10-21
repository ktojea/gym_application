// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_verification_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckVerificationCodeResponseImpl
    _$$CheckVerificationCodeResponseImplFromJson(Map<String, dynamic> json) =>
        _$CheckVerificationCodeResponseImpl(
          accessToken: json['access_token'] as String,
          tokenType: json['token_type'] as String,
          userId: json['user_id'] as String,
        );

Map<String, dynamic> _$$CheckVerificationCodeResponseImplToJson(
        _$CheckVerificationCodeResponseImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'user_id': instance.userId,
    };
