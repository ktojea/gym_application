// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return _Subscription.fromJson(json);
}

/// @nodoc
mixin _$Subscription {
  int get id => throw _privateConstructorUsedError;
  String get gymName => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  String? get gymAvatar => throw _privateConstructorUsedError;
  bool get notify => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) then) =
      _$SubscriptionCopyWithImpl<$Res, Subscription>;
  @useResult
  $Res call(
      {int id,
      String gymName,
      int price,
      DateTime endTime,
      String? gymAvatar,
      bool notify});
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res, $Val extends Subscription>
    implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gymName = null,
    Object? price = null,
    Object? endTime = null,
    Object? gymAvatar = freezed,
    Object? notify = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      gymName: null == gymName
          ? _value.gymName
          : gymName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gymAvatar: freezed == gymAvatar
          ? _value.gymAvatar
          : gymAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      notify: null == notify
          ? _value.notify
          : notify // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionImplCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$$SubscriptionImplCopyWith(
          _$SubscriptionImpl value, $Res Function(_$SubscriptionImpl) then) =
      __$$SubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String gymName,
      int price,
      DateTime endTime,
      String? gymAvatar,
      bool notify});
}

/// @nodoc
class __$$SubscriptionImplCopyWithImpl<$Res>
    extends _$SubscriptionCopyWithImpl<$Res, _$SubscriptionImpl>
    implements _$$SubscriptionImplCopyWith<$Res> {
  __$$SubscriptionImplCopyWithImpl(
      _$SubscriptionImpl _value, $Res Function(_$SubscriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gymName = null,
    Object? price = null,
    Object? endTime = null,
    Object? gymAvatar = freezed,
    Object? notify = null,
  }) {
    return _then(_$SubscriptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      gymName: null == gymName
          ? _value.gymName
          : gymName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gymAvatar: freezed == gymAvatar
          ? _value.gymAvatar
          : gymAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      notify: null == notify
          ? _value.notify
          : notify // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionImpl extends _Subscription {
  const _$SubscriptionImpl(
      {required this.id,
      required this.gymName,
      required this.price,
      required this.endTime,
      required this.gymAvatar,
      required this.notify})
      : super._();

  factory _$SubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionImplFromJson(json);

  @override
  final int id;
  @override
  final String gymName;
  @override
  final int price;
  @override
  final DateTime endTime;
  @override
  final String? gymAvatar;
  @override
  final bool notify;

  @override
  String toString() {
    return 'Subscription(id: $id, gymName: $gymName, price: $price, endTime: $endTime, gymAvatar: $gymAvatar, notify: $notify)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.gymName, gymName) || other.gymName == gymName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.gymAvatar, gymAvatar) ||
                other.gymAvatar == gymAvatar) &&
            (identical(other.notify, notify) || other.notify == notify));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, gymName, price, endTime, gymAvatar, notify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      __$$SubscriptionImplCopyWithImpl<_$SubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionImplToJson(
      this,
    );
  }
}

abstract class _Subscription extends Subscription {
  const factory _Subscription(
      {required final int id,
      required final String gymName,
      required final int price,
      required final DateTime endTime,
      required final String? gymAvatar,
      required final bool notify}) = _$SubscriptionImpl;
  const _Subscription._() : super._();

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$SubscriptionImpl.fromJson;

  @override
  int get id;
  @override
  String get gymName;
  @override
  int get price;
  @override
  DateTime get endTime;
  @override
  String? get gymAvatar;
  @override
  bool get notify;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
