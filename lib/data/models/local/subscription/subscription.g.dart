// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionImpl _$$SubscriptionImplFromJson(Map<String, dynamic> json) =>
    _$SubscriptionImpl(
      id: (json['id'] as num).toInt(),
      gymName: json['gym_name'] as String,
      price: (json['price'] as num).toInt(),
      endTime: DateTime.parse(json['end_time'] as String),
      gymAvatar: json['gym_avatar'] as String?,
      notify: json['notify'] as bool,
    );

Map<String, dynamic> _$$SubscriptionImplToJson(_$SubscriptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gym_name': instance.gymName,
      'price': instance.price,
      'end_time': instance.endTime.toIso8601String(),
      'gym_avatar': instance.gymAvatar,
      'notify': instance.notify,
    };
