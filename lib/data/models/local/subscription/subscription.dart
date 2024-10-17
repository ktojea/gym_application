import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

@freezed
class Subscription with _$Subscription {
  const Subscription._();
  const factory Subscription({
    required String id,
    required String gymName,
    required int price,
    required DateTime endDate,
    required String? gymAvatar,
    required bool isOpen,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);
}