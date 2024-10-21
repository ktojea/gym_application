// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionImpl _$$SubscriptionImplFromJson(Map<String, dynamic> json) =>
    _$SubscriptionImpl(
      id: (json['id'] as num).toInt(),
      gymName: json['gymName'] as String,
      price: (json['price'] as num).toInt(),
      endDate: DateTime.parse(json['endDate'] as String),
      gymAvatar: json['gymAvatar'] as String?,
      isNotificated: json['isNotificated'] as bool,
    );

Map<String, dynamic> _$$SubscriptionImplToJson(_$SubscriptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gymName': instance.gymName,
      'price': instance.price,
      'endDate': instance.endDate.toIso8601String(),
      'gymAvatar': instance.gymAvatar,
      'isNotificated': instance.isNotificated,
    };
