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
      endDate: DateTime.parse(json['end_date'] as String),
      gymAvatar: json['gym_avatar'] as String?,
      isNotificated: json['is_notificated'] as bool,
    );

Map<String, dynamic> _$$SubscriptionImplToJson(_$SubscriptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gym_name': instance.gymName,
      'price': instance.price,
      'end_date': instance.endDate.toIso8601String(),
      'gym_avatar': instance.gymAvatar,
      'is_notificated': instance.isNotificated,
    };
